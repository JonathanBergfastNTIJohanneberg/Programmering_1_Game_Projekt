# Beskrivning:  Denna kod representerar en spelmeny för spelet "COFFE WARRIOR". Koden är skriven i Ruby med användning av Gosu-biblioteket för att hantera fönster och användargränssnitt. Spelmenyn visar en titelskärm med ett logotypbilde och två knappar: "Start Game" och "Exit Game". Vid klick på "Start Game"-knappen går spelet in i karaktärsskapelseläge, där spelaren uppmanas att ange sitt namn, kön och ålder. Efter att spelaren har angett dessa uppgifter visas en sammanfattning av karaktärens information och spelaren har möjlighet att ändra den eller fortsätta in i spelet.

# Datum: 2023-05-08
# Namn 1: yusuf muhumed
# namn 2: Jonthan Bergfast


require 'gosu'
require_relative "battle.rb"
require_relative "story.rb"
#Beskrivning: En klass som ärver från Gosu::Window och representerar huvudfönstret för spelmenyn.
class TitleScreen < Gosu::Window
  #Beskrivning: En metod som körs vid skapandet av ett nytt TitleScreen-objekt och används för att sätta upp de initiala värdena och resurserna för spelmenyn.
  #Argument: Inga argument.
  #Return: Inget returvärde.
  #Exempel: title_screen = TitleScreen.new
  def initialize
    super(800, 600, false)
    self.caption = "COFFE WARRIOR"
    @menu_mode = true
    @character_creation = false
    @needs_redraw = true
    @background_image = Gosu::Image.new("caffeinvania.jpg", :tileable => true)
    @background_image_character_creation = Gosu::Image.new("character_creation_background.jpg", :tileable => true)
    @music = Gosu::Song.new("ocarina_of_time.wav")
    @music_character_creation = Gosu::Song.new("character_music.mp3")
    self.text_input = Gosu::TextInput.new
    @music.play(true)
    @current_field = :no_text
    @character = {}
    @prompt_again = true
    @text_input = Gosu::TextInput.new
    
  
    @logo_image = Gosu::Image.new("logo.png")
    @logo_x = (width - @logo_image.width) / 2.0
    @logo_y = -100
  
    @font = Gosu::Font.new(64, name: "font.otf")
  
    @start_game_button = "Start Game"
    @start_game_button_x = (width - @font.text_width(@start_game_button)) / 2.0
    @start_game_button_y = 600  # Fixed position below the window
  
    @exit_button = "Exit Game"
    @exit_button_x = (width - @font.text_width(@exit_button)) / 2.0
    @exit_button_y = 800  # Fixed position below the window
  end
  
 # Beskrivning: En metod som körs kontinuerligt för att uppdatera tillståndet och logiken för spelmenyn.
 # Argument: Inga argument.
 # Return: Inget returvärde.
 # Exempel: title_screen.update
  def update
    @logo_y += 1 if @logo_y < -100  # Move logo downwards until y-coordinate is 150
    # Move button texts upwards until they reach their fixed positions
    if @start_game_button_y > 400
      @start_game_button_y -= 1
    end
    if @exit_button_y > 500
      @exit_button_y -= 1
    end
  end

  
  # Beskrivning: Denna metod används för att rita ut karaktärsinformation på skärmen.
  # Argument 1: name - En sträng som representerar karaktärens namn.
  # Argument 2: gender - En sträng som representerar karaktärens kön.
  # Argument 3: age - En sträng som representerar karaktärens ålder.
  # Argument 4: x - En heltalsvärde som representerar x-koordinaten för var karaktärsinformationen ska ritas ut.
  # Argument 5: y - En heltalsvärde som representerar y-koordinaten för var karaktärsinformationen ska ritas ut.
  # Argument 6: color - Ett heltalsvärde som representerar färgen på texten i RGB-format.
  # Return: Ingen returvärde.
  # Exempel: draw_character_info("John Doe", "Male", "25", 100, 200, 0xffffffff)
  def draw_character_info(name, gender, age, x, y, color)
    font = Gosu::Font.new(64, name: "font.otf")
    line_height = font.height + 5
  
    font.draw_text("Name: #{name}", x, y, 0, 1, 1, color)
    font.draw_text("Gender: #{gender}", x, y + line_height, 0, 1, 1, color)
    font.draw_text("Age: #{age}", x, y + line_height * 2, 0, 1, 1, color)
  end
  




#Beskrivning: En metod som anropas när en knapp trycks ned. Metoden hanterar olika typer av knapptryckningar och utför åtgärder baserat på vilken knapp som tryckts ned.
#Argument:
#id: En identifierare för den knapp som tryckts ned.
#Return: Inget returvärde.
#Exempel: title_screen.button_down(Gosu::KB_ESCAPE)
  def button_down(id)
    case id
    when Gosu::KB_ESCAPE
      close
    when Gosu::MS_LEFT
      handle_click
    when Gosu::KB_RETURN
      case @current_field
      when :no_text
        @current_field = :name
      when :name
        if self.text_input.text.match(/^[a-zA-Z]+$/i)
          @character[:name] = self.text_input.text.capitalize
          self.text_input = Gosu::TextInput.new
          @current_field = :gender
        else
          puts "Name must only contain letters, and no spaces"
        end      
      when :gender
        case self.text_input.text.downcase
        when "m"
          @character[:gender] = "Male"
          self.text_input = Gosu::TextInput.new
          @current_field = :age
        when "f"
          @character[:gender] = "Female"
          self.text_input = Gosu::TextInput.new
          @current_field = :age
        else
          puts "Invalid input, please choose M or F"
        end
      when :age
        if self.text_input.text.match(/^\d+$/)
          @character[:age] = self.text_input.text
          self.text_input = Gosu::TextInput.new
          @current_field = :end
        else
          puts "Age must be a number"
        end
      when :end
        answer = nil
        until ['y', 'n'].include?(answer)
          puts "Y for changing character N to Continue"
          answer = self.text_input.text.downcase
          if !['y', 'n'].include?(answer)
            p answer
            puts "Invalid input, please choose Y or N, cannot have multiple Y's or N's"
            return
          end
        end
        if answer.downcase == 'y'
          self.text_input = Gosu::TextInput.new
          @current_field = :name
        elsif answer.downcase == 'n' || answer.downcase == 'N'
          puts "Starting game..."
          close
          story()
        end
      end
    end
  end


  #Beskrivning: En metod som anropas när vänster musknapp klickas. Metoden kontrollerar om klicket inträffade på någon av knapparna i spelmenyn och utför motsvarande åtgärder.
  #Argument: Inga argument.
 # Return: Inget returvärde.
  # Exempel: title_screen.handle_click
  def handle_click
    if mouse_on_button?(@start_game_button_x, @start_game_button_y, @font.text_width(@start_game_button), @font.height)
      start_game
    elsif mouse_on_button?(@exit_button_x, @exit_button_y, @font.text_width(@exit_button), @font.height)
      close
    end
  end

  # Beskrivning: Denna metod kontrollerar om muspekaren befinner sig över en knapp.
  # Argument 1: button_x (Integer) - x-koordinaten för knappens övre vänstra hörn.
  # Argument 2: button_y (Integer) - y-koordinaten för knappens övre vänstra hörn.
  # Argument 3: button_width (Integer) - bredden på knappen.
  # Argument 4: button_height (Integer) - höjden på knappen.
  # Return: Returnerar true om muspekaren befinner sig över knappen, annars false.
  # Exempel:
  # mouse_on_button?(100, 200, 80, 30) #=> true
  # mouse_on_button?(300, 150, 50, 50) #=> false
  def mouse_on_button?(button_x, button_y, button_width, button_height)
      mouse_x > button_x && mouse_x < button_x + button_width && mouse_y > button_y && mouse_y < button_y + button_height
  end

 # Beskrivning: En metod som sätter spelmenyn i karaktärsskapelseläge och förbereder fönstret för att visa karaktärsskapelselementen.
# Argument: Inga argument.
#Return: Inget returvärde.
# Exempel: title_screen.start_game
  def start_game
    @menu_mode = false
    @character_creation = true
    @needs_redraw = true
  end
  

  # Beskrivning: Denna metod används för att rita ut grafiska element och text på skärmen i spelet.
  # Argument: Inga argument.
  # Return: Ingen retur.
  # Exempel:
  # draw # Ritar spelets grafiska element och text på skärmen.
  def draw
    super
  
    case @current_field 
    when :name
      @music_character_creation.play(true)
      @music_character_creation.play
      @background_image_character_creation.draw(0, 0, 0)
      @font.draw_text("What would you like to be called?", 10, 10, 0)
    when :gender
      @music_character_creation.play(true)
      @music_character_creation.play
      @background_image_character_creation.draw(0, 0, 0)
      @font.draw_text("Press M for Male, F for Female", 10, 10, 0)
    when :age
      @music_character_creation.play(true)
      @music_character_creation.play
      @background_image_character_creation.draw(0, 0, 0)
      @font.draw_text("What is your character's age?", 10, 10, 0)
    when :end 
      @background_image_character_creation.draw(0, 0, 0)
      @font.draw_text("Y to change and N to continue", 10, 10, 0)
      draw_character_info(@character[:name], @character[:gender], @character[:age], (width - 770) / 2, (height - 25) / 2, 0xffffffff)
    end 

    @font.draw_text(self.text_input.text, 10, 100, 0)
    if @menu_mode
      @background_image.draw(0, 0, 0)
      @logo_image.draw(@logo_x, @logo_y, 0)
      draw_button(@start_game_button, @start_game_button_x, @start_game_button_y)
      draw_button(@exit_button, @exit_button_x, @exit_button_y)
    else 
      redraw_game_screen
    end 
  end 


  #Beskrivning: En metod som är ansvarig för att rita om spelmenyn när den befinner sig i karaktärsskapelseläget. Denna metod kan anpassas för att lägga till ytterligare visuella element och logik för karaktärsskapandet.
  #Argument: Inga argument.
  #Return: Inget returvärde.
  #Exempel: title_screen.redraw_game_screen
  def redraw_game_screen
   
  end

  #Beskrivning: En metod som används för att rita ut en knapp på skärmen med en given text och position.
  # Argument:

    #text: En sträng som representerar texten som ska visas på knappen.
   # x: En numerisk värde som anger x-koordinaten för knappen.
   # y: En numerisk värde som anger y-koordinaten för knappen.
   # radius: En numerisk värde som representerar radien för knappens avrundade hörn (standardvärdet är 10).
   #color: En hexadecimal färgkod som representerar färgen för knappen (standardvärdet är 0xff_808080).
   # z: En numerisk värde som representerar z-ordningen för att rita knappen (standardvärdet är 0).
   # Return: Inget returvärde.

   # Exempel: title_screen.draw_button("Start Game", 100, 200)

  
  def draw_button(text, x, y, radius = 10, color = 0xff_808080, z = 0)
    width = @font.text_width(text) + 20
    height = @font.height - 4
  
    if mouse_on_button?(x, y, width, height)
      draw_rounded_rect(x, y, width, height, radius, color, z)
    end
  
    @font.draw_text(text, x + 10, y + 2, 0, 1, 1, 0xffffffff)
  end
  
  #Beskrivning: Denna metod ritar en rektangel med rundade hörn på skärmen.
  # Argument 1: x-koordinaten för den övre vänstra hörnpunkten av rektangeln.
  # Argument 2: y-koordinaten för den övre vänstra hörnpunkten av rektangeln.
  # Argument 3: Bredden på rektangeln.
  # Argument 4: Höjden på rektangeln.
  # Argument 5: Radien för de rundade hörnen.
  # Argument 6: Färgen att fylla rektangeln med.
  # Argument 7: (valfritt) Z-värdet för att styra ordningen av ritningen (default är 0).
  # Return: Inget returnerat värde.
  # Exempel: draw_rounded_rect(100, 100, 200, 150, 10, 0xff_0000ff)
  def draw_rounded_rect(x, y, width, height, radius, color, z = 0)
    Gosu.clip_to(x + radius, y, width - 2 * radius, height) do
      Gosu.draw_rect(x + radius, y, width - 2 * radius, height, color, z)
    end
    Gosu.clip_to(x, y + radius, width, height - 2 * radius) do
      Gosu.draw_rect(x, y + radius, width, height - 2 * radius, color, z)
    end
    Gosu.draw_quad(x + radius, y, color,x + width - radius, y, color,x + width, y + radius, color,x + width, y + height - radius, color) 
  end
  
  #Beskrivning: En metod som returnerar en boolesk sanning om spelmenyn kräver att en muspekare visas på skärmen.
 #Argument: Inga argument.
  #Return: En boolesk sanning (true/false) beroende på om muspekaren krävs eller inte.
  #Exempel: title_screen.needs_cursor?
  def needs_cursor?
    true
  end

  #Beskrivning: Denna metod kontrollerar om karaktärsskapandet är slutfört.
  #Argument: Inga argument.
  #Return: Returnerar true om karaktärsskapandet är slutfört, annars false.
  #Exempel:
  #character_creation_completed? #=> true
  #character_creation_completed? #=> false
  def character_creation_completed?
    !@prompt_again
  end

  #Beskrivning: Denna metod returnerar karaktären som har skapats.
  #Argument: Inga argument.
  #Return: Returnerar en hash som representerar karaktären.
  #Exempel: character #=> { name: "John", gender: "Male", age: 30 }
  def character
    @character
  end


  #Beskrivning: Denna metod indikerar om uppdatering behövs.
  #Argument: Inga argument.
  #Return: Returnerar alltid true, vilket innebär att uppdatering behövs.
  #Exempel: needs_update? #=> true
  def needs_update?
    true
  end
  
end

TitleScreen.new.show