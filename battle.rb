
# Beskrivning: Funktionen battle simulerar en strid mellan en spelare och en motståndare med olika alternativ för spelaren att välja mellan.
# Argument 1: player_info - en array med spelarens information, inklusive hälsa, erfarenhetspoäng, nivå, om spelaren har en rymdsvärd och hastighet.
# Argument 2: message - en sträng med ett meddelande som ska visas i början av striden.
# Argument 3: opponent_info - en array med motståndarens information, inklusive hälsa, skada och hastighet.
# Argument 4: level - en heltalsvariabel som anger nivån på motståndaren.
# Return: Ingen explicit return, men spelarens information uppdateras under striden.
# Exempel:
# player_info = [100, 0, 1, true, 10]
# message = "En fiende dyker upp!"
# opponent_info = [50, 10, 5]
# level = 2
# battle(player_info, message, opponent_info, level)
# Datum: 2023-05-08
# Namn 1: yusuf muhumed
# namn 2: Jonthan Bergfast
def battle(player_info,message,opponent_info,level)
    

    
    puts "\n"
    puts message
    puts "\n"
    puts "oppenent level " +level.to_s
    state= true
    if opponent_info[0]==0
        state=false
    end


    

    
    while state
        player_speed = player_info[4]
        opp_speed = opponent_info[4]
    
    
        puts "\n"
        puts "your health: " + player_info[0].to_s
        puts "opponent health: " +opponent_info[0].to_s
        puts "choose one of the following options"
        puts "\n"
        puts "a. Sword attack"
        puts "b. coffe heal"
        puts "c. run"
        puts "\n"
        user_input= gets.chomp.downcase
      
        while user_input!= "a"||user_input!= "b"||user_input!= "c"
            if  user_input== "a"||user_input== "b"||user_input== "c"
                break
            end
            puts "Invalid input! Please enter a for sword attacks, b for coffe heals, or c to run."
            user_input = gets.chomp.downcase
        end
  
        if player_speed.to_i < opp_speed.to_i
            puts "\n"
            puts "opponent's turn"
            puts "\n"
            player_info[0]= player_info[0]-opponent_info[1]
            puts "opponent dealth "+ opponent_info[1].to_s+ " damage"
            puts "\n"
        end
  
        if user_input.downcase == "a"
            opponent_info[0]= opponent_info[0]-25
            puts "you've dealt 25 damage"
            
        end
  
        if user_input.downcase == "b"
            if player_info[0] >= 100
                puts "health already full"
    
            end
            if player_info[0] < 100
                player_info[0]= player_info[0]+20
                puts "you've drank your coffe healing potion"
                
            end
        end
        if opponent_info[0] <= 0
            message = "congrats you beat your opponent"
            exp = 50 + level*10
            puts "You gained #{exp} experience points!"
            player_info[1] += exp
            if player_info[1] >= 150
                player_info[1] -= 150
                player_info[2] += 1
                puts "You have leveled up! Your level is now #{player_info[2]}!"
            end
            puts message
            return 
        end
  
        if user_input.downcase == "c"
            if player_info[3] == true
                puts "you've succsefully ran away"
                next
            end
  
            if player_info[3] == false
                puts "you couldn't get away" 
            end
        end
        
        
        
        if player_speed.to_i > opp_speed.to_i
            puts "\n"
            puts "opponent's turn"
            puts "\n"
            player_info[0]= player_info[0]-opponent_info[1]
            puts "opponent dealth "+ opponent_info[1].to_s+ " damage"
            puts "\n"
        end
        
        if player_info[0] <= 0
            puts "\n"
            puts "Game Over"
            puts "\n"
            sleep(2)
            system("ruby version_alpha.rb")
            exit
        end
    end
end
