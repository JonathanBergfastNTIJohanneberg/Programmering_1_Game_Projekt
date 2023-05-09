
# Beskrivning: Funktionen riddle tar in en gåta och svaret till gåtan och returnerar att användarens input ät fel tills den få rätt då funktionen avslutas
# Argument 1: självaste gåtan som är en sträng
# Argument 2: svaret till gåtan som är en sträng
# Return: Ingen explicit return, funktionen ger tillbaka ifall du hade rätt eller fel
# Exempel:
# gåta_om_groda = "vad kallar man en groda utan ben"
# svar = "hopplös"
# riddle(gåta_om_groda,hopplös)
# Datum: 2023-05-08
# Namn 1: yusuf muhumed
# namn 2: Jonthan Bergfast
def riddle(riddle,answer)
    puts riddle
    puts "\n"
    puts "what is the answer youngling?"
    user_input = gets.chomp
    state=true
    while state
        if user_input.downcase == answer
            puts "you've got the right answer youngling. congrats!!!."
            state = false
        end
        if user_input.downcase != answer
            puts "you've got the wrong answer"
            user_input = gets.chomp
        end
  
    end
  end
  