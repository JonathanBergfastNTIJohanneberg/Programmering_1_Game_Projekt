
# Beskrivning: Funktionen validator är en kod som används för att validera användarens input och sedan returnera input ifall den är godkänd.
# Argument 1: En array som med de alternativen vi söker efter i user_input
# Argument 2: Ett meddelande som visas i terminalen ifall user_input är fel.
# Return: användarens input ifall den är godkänd
# Exempel:
#  valid_options = ["a", "b", "c"]
# message = "En fiende dyker upp!"
# validator(valid_options, message)
# >>> 2
# invalid input. please chooose betweeen options a, b or c
# >>> a
# a
# Datum: 2023-05-08
# Namn 1: yusuf muhumed
# namn 2: Jonthan Bergfast
def validator(valid_options, message)
    loop do
      user_input = gets.chomp.downcase
      if valid_options.include?(user_input)
        return user_input
      else
        puts message
      end
    end
  end



