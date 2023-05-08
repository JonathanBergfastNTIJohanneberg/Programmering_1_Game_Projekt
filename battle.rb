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
        my_turn= 1
        opp_turn=1
  
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
            my_turn+=1
        end
  
        if user_input.downcase == "b"
            if player_info[0] >= 100
                puts "health already full"
    
            end
            if player_info[0] < 100
                player_info[0]= player_info[0]+20
                puts "you've drank your coffe healing potion"
                my_turn+=1
            end
        end
        if opponent_info[0] <= 0
            message = "congrats you beat your opponent"
            puts message
            my_turn+=1
            exp = 50 + level*10
            puts "You gained #{exp} experience points!"
            player_info[1] += exp
            if player_info[1] >= 150
                player_info[1] -= 150
                player_info[2] += 1
                puts "You have leveled up! Your level is now #{player_info[2]}!"
            end
            break
        end
  
        if user_input.downcase == "c"
            if player_info[3] == true
                puts "you've succsefully ran away"
                break
            end
  
            if player_info[3] == false
                puts "you couldn't get away"
                my_turn+=1
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
            puts "Game Over"
            break
        end
  
        
  
    end
    
end
  