require_relative "battle.rb"
require_relative "validator"

def print_with_typing(text, delay)
  text.each_char do |c|
    print c
    sleep delay
  end
end

def story()
  player_info = [100,25,[true, false].sample,10]

  latte_woods_opp = [
    [50, 20, 8, [true, false].sample, 5],
    [60, 20, 10, [true, false].sample, 4],
    [70, 25, 10, [true, false].sample, 6],
    [80, 30, 15, [true, false].sample, 6],
    [100, 25, 20, [true, false].sample, 5]
  ]

  espresso_lane_opp = [
    [60, 30, 15, [true, false].sample, 6],
    [80, 30, 15, [true, false].sample, 6],
    [100, 25, 20, [true, false].sample, 5],
    [100, 25, 20, [true, false].sample, 5],
    [100, 25, 20, [true, false].sample, 5],
    [120, 35, 25, [true, false].sample, 4]
  ]
  # skiv story intro

  puts"\n"
  print_with_typing("The year is 4042, and the world is barely recognizable. As you slowly open your eyes, the reality of the post-apocalyptic world around you sets in. The sun's dim light struggles to penetrate the thick haze of smog and ash that hangs in the air, a constant reminder of the destruction that has taken place. It's been years since the collapse, and the chaos that ensued was unprecedented. The global coffee shortage left people unable to function without their morning cup of coffee or energy drinks, and as a result, society crumbled.", 0.03)
  puts "\n"
  sleep(2)
  puts "\n"
  print_with_typing("Riots, looting, and violence swept across the globe as people struggled to cope with the withdrawal symptoms. Governments fell, infrastructure collapsed, and the world was plunged into darkness. The absence of caffeine, once taken for granted, had brought the world to its knees.", 0.03)
  puts "\n"
  puts "\n"
  sleep(2)
  print_with_typing("But amidst the ruins, a new world has emerged. A world where survival is the only goal. Will you be able to navigate the dangers of this new reality? Will you be able to scavenge for resources, avoid danger, and find a way to thrive in a world without caffeine? The choice is yours, and your fate hangs in the balance. Welcome to the year 4042.", 0.03)
  puts "\n"
  puts "\n"
  print_with_typing("PRESENT DAY", 0.03)
  puts "\n"
  puts "\n"
  sleep(2)
  print_with_typing("As you start to come to, you realize that you have been in a daze. Your head is pounding, and your vision is blurry. You struggle to sit up and take in your surroundings. The world around you is barely recognizable. The buildings are in ruins, and the streets are littered with debris. The air is thick with smog and ash, and the only sound you can hear is the distant rumbling of thunder. You try to remember how you got here, but your memory is hazy. Just then, an old man approaches you, asking for help.", 0.03)
  puts"\n"
  puts"\n"
  sleep(2)
  print_with_typing("He looks desperate and in disarray, and there is no one else around to assist him. His clothes are torn and dirty, and his eyes are filled with fear. He tells you that he is being chased by a group of raiders who are after his supplies, and he needs your help to fend them off. You hesitate, not knowing if you can trust this stranger, but his desperation is palpable, and you know that you are in no position to refuse anyone who can potentially help you survive in this new world.", 0.03)
  puts "\n"
  puts "\n"
  sleep(2)
  puts "a.Stay and try to dissolve his mumbling"
  puts "b.Push him aside and walk away"
  puts "\n"
  player_choice = validator(["a","b"],"invalid input. please chooose betweeen options a or b")
  puts "\n"

  if player_choice =="a"
    print_with_typing("You stand up, feeling a twinge of pain in your side, and follow the old man through the ruins of the city. You can see the fear in his eyes as he looks over his shoulder, and you know that you need to act fast. As you approach a small alleyway, you hear the sound of footsteps getting louder. The raiders are closing in, and you can see their shadows moving in the distance.", 0.03)
    sleep(2)
    puts "\n"
    puts "\n"
    print_with_typing("You turn to the old man, trying to muster the words to ask him what's going on, but he cuts you off.", 0.03)
    puts"\n"
    puts "\n"
    print_with_typing("Distressed-Old-Man: Please, you have to help me,he says, with his voice shaking.\n \n Distressed-Old-Man: They're after me, and I have nowhere else to turn.", 0.03)
    puts"\n"
    puts "\n"
    print_with_typing("You try to calm him down, telling him that you don't even know who he is or what's going on, but the old man doesn't listen. He just keeps begging for your help, getting more and more desperate by the second.", 0.03) 
    puts"\n"
    puts "\n"
    print_with_typing("As you two keep exchanging dialouge, you realize that the raiders are getting closer. You turn to the old man again, trying to get him to tell you what's happening, but he just keeps pleading with you.", 0.03)
    puts"\n"
    puts "\n"
    puts "a. Prepare to fight for your life"
    puts "b. Make a break for it"
    puts"\n"
    player_choice = validator(["a","b"],"invalid input. please chooose betweeen options a or b")
    puts "\n"
  
    if player_choice == "a"
      print_with_typing("As the raiders approached, their eyes glinting with malice and their weapons drawn, you felt a cold shiver run down your spine. The old man beside you cowered in fear, but you knew that you couldn't give up without a fight.", 0.03)
      puts "\n"
      puts "\n"
      battle(player_info,"Raider 1: I Will Kill You",latte_woods_opp[0],1)
      puts "\n"
      battle(player_info,"Raider 2: Prepare To Suffer",latte_woods_opp[1],1)
      
    end

    if player_choice == "b"
      print_with_typing("Suddenly, the raiders are upon you, and they're not interested in talking. They draw their weapons, and the old man drops to his knees, begging for mercy and help.", 0.03)  
      puts "\n"
      puts "\n"
      print_with_typing(" But the raiders aren't interested in either. They kill the old man as soon as he's done making his last requests, and turn to you with their weapons high in the air, waving to get your head.", 0.03)  
      puts "\n"
      puts "\n"
      print_with_typing(" You decide to make a break for it, limping away as fast as you can. The raiders give chase, and you run through the broken buildings and abandoned streets of the city.", 0.03) 
      puts "\n"
      puts "\n"
      print_with_typing("Finally, you find yourself enclosed with nowhere to go. The raiders are closing in on you, and the only way out is a cliff that drops down into a river far below.", 0.03) 
      puts "\n"
      puts "\n"
      print_with_typing("Without thinking, you jump, feeling the rush of the wind as you fall. You hit the water with a splash, and for a moment, everything goes black.", 0.03) 
      puts "\n"
      puts "\n"
      print_with_typing(" But then, you surface, gasping for air. You look up and see the raiders on the edge of the cliff, shouting and waving their weapons in anger.", 0.03) 
      puts "\n"
      puts "\n"
      print_with_typing("You swim to the shore, feeling a sense of relief wash over you. You made it out alive, but you know that the dangers of this new world are far from over.", 0.03) 
      ###
      print_with_typing("Du kommer till en väkskylt, åt höger är Espreosso Lane Åt vänster är Latte Woods", 0.03)
      player_choice = nil 
    end 
  end 

  if player_choice == "b"
    print_with_typing("Travelling yadi yadi yada", 0.03)
    ###
    ###
    print_with_typing("Du kommer till en väkskylt, åt höger är Espreosso Lane Åt vänster är Latte Woods", 0.03)
  end 



  
  
  user_input= ""
  while user_input!="c"
      user_input=validator(["a","b","c"],"invalid input. please chooose betweeen options a, b or c")
      puts"\n"
      puts "CHOOSE BETWEEN THE OPTIONS AVAILABLE"
      puts"\n"
      puts "a. Where am i?"
      puts "b. Who are you?"
      puts "c. Continue"
      if user_input == "a"
        puts"\n"
        print_with_typing( "You are at the caffeinvania village, the southern village of the kingdom caffemania", 0.00005)
        puts"\n"
      end
      if user_input == "b"
        puts"\n"
          print_with_typing("I am the king of this village big j", 0.0005)
          puts"\n"
      end
  end
  puts "\n"
  print_with_typing("NOOOOOW WARRIOR! WILL YOU ACCEPT THIS CHALLENGE TO BECOME THE COFFE WARRIOR AND SAVE THIS VILLAGE FROM THE GREAT COFFE DEPRESSION", 0.00005)
  puts "\n"
  puts "a. Yes,i'm ready!"
  puts "b. No, give me a bit of time man."
  user_input= validator(["a","b"],"invalid input. please chooose betweeen options a or b")
  
  if user_input== "a"
    puts"\n"
      print_with_typing( "excellent let's the journey begin!", 0.00005)
      puts "\n"
  end
  if user_input== "b"
    puts"\n"
      print_with_typing("you have no choice my youngling. Let's the journey begin!", 0.00005) 
      puts "\n"
  end
  sleep(2)
  puts "\n"
  puts "Which route do you want to take"
  puts "\n"
  sleep(1)
  puts "a. Espresso lane known for it's fast route to great coffe. But be warned, the road is also home to mischievous baristas who are difficult opponents to beat.(hard mode)"
  puts "\n"
  sleep(5)
  puts "\n"
  puts "b. Latte Woods known for it's creamy and foamy route to coffe. It takes time to get to where you want,but it's a calm ride to get your coffe.(easy mode)"
  puts"\n"
  
  user_input= validator(["a","b"],"invalid input. please chooose betweeen options a or b")
  if user_input == "a"
      sleep(1)
      puts"\n"
      puts "You've choosen the Espresso lane."
      puts"\n"
  end
  if user_input == "b"
      sleep(1)
      puts"\n"
      puts "You've choosen the Latte Woods."
      puts"\n"
  end

  if user_input == "a"
    opponents = espresso_lane_opp
  end

  if user_input == "b"
    opponents = latte_woods_opp
  end


  

  puts "\n"
  sleep(1)
  print_with_typing("chosen warrior, set off on his quest with nothing but a map and his wits. He journeyed through dense forests, across raging rivers, and over treacherous mountains. Along the way, he encountered many dangers, including wild beasts, hostile tribes, and treacherous terrain.", 0.0005) 
  puts "\n"
  sleep(1)
  puts "suddenly an opponent has appeared!!!!!"
  sleep(1)
  
  
  

end 



