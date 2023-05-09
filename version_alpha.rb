require 'gosu'
require_relative "battle.rb"
require_relative "story.rb"

class TitleScreen < Gosu::Window
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

  

  def draw_character_info(name, gender, age, x, y, color)
    font = Gosu::Font.new(64, name: "font.otf")
    line_height = font.height + 5
  
    font.draw_text("Name: #{name}", x, y, 0, 1, 1, color)
    font.draw_text("Gender: #{gender}", x, y + line_height, 0, 1, 1, color)
    font.draw_text("Age: #{age}", x, y + line_height * 2, 0, 1, 1, color)
  end
  

  
def print_with_typing(text, delay)
  text.each_char do |c|
    print c
    sleep delay
  end
end


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


  def handle_click
    if mouse_on_button?(@start_game_button_x, @start_game_button_y, @font.text_width(@start_game_button), @font.height)
      start_game
    elsif mouse_on_button?(@exit_button_x, @exit_button_y, @font.text_width(@exit_button), @font.height)
      close
    end
  end

  def mouse_on_button?(button_x, button_y, button_width, button_height)
      mouse_x > button_x && mouse_x < button_x + button_width && mouse_y > button_y && mouse_y < button_y + button_height
  end

  def start_game
    @menu_mode = false
    @character_creation = true
    @needs_redraw = true
  end
  
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


  def redraw_game_screen
   
  end
  
  def draw_button(text, x, y, radius = 10, color = 0xff_808080, z = 0)
    width = @font.text_width(text) + 20
    height = @font.height - 4
  
    if mouse_on_button?(x, y, width, height)
      draw_rounded_rect(x, y, width, height, radius, color, z)
    end
  
    @font.draw_text(text, x + 10, y + 2, 0, 1, 1, 0xffffffff)
  end
  
  
  def draw_rounded_rect(x, y, width, height, radius, color, z = 0)
    Gosu.clip_to(x + radius, y, width - 2 * radius, height) do
      Gosu.draw_rect(x + radius, y, width - 2 * radius, height, color, z)
    end
    Gosu.clip_to(x, y + radius, width, height - 2 * radius) do
      Gosu.draw_rect(x, y + radius, width, height - 2 * radius, color, z)
    end
    Gosu.draw_quad(x + radius, y, color,x + width - radius, y, color,x + width, y + radius, color,x + width, y + height - radius, color) 
  end
  

  def needs_cursor?
    true
  end

  def character_creation_completed?
    !@prompt_again
  end

  def character
    @character
  end

  def needs_update?
    true
  end
  
end

TitleScreen.new.show