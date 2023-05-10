



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
  print_with_typing("As you start to lively up, you realize that you have been in a daze. Your head is pounding, and your vision is blurry. You struggle to sit up and take in your surroundings. The world around you is barely recognizable. The buildings are in ruins, and the streets are littered with debris. The air is thick with smog and ash, and the only sound you can hear is the distant rumbling of thunder. You try to remember how you got here, but your memory is hazy. Just then, an old man approaches you, asking for help.", 0.03)
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
      puts "\n"
      puts "\n"
      sleep(2)
      print_with_typing("As the raiders lay defeated at your feet, you take a deep breath and survey the area around you. Your heart is still racing from the adrenaline rush of battle, but you can feel exhaustion starting to creep up on you. You know you need to find shelter, and fast.", 0.03)
      puts "\n"
      puts "\n"
      print_with_typing("Your eyes scan the horizon, searching for any sign of civilization. In the distance, you see the outline of a building, and your heart lifts. Maybe you can find refuge there. You help the old man to his feet, and together you start to move towards the structure.", 0.03)
      puts "\n"
      puts "\n"
      print_with_typing("As you approach, you can see that it's an old, run-down building, probably abandoned long ago. But at this point, any shelter is better than none. You kick open the door and step inside, the old man shuffling in behind you.", 0.03)
      puts "\n"
      puts "\n"
      print_with_typing("The inside is just as dilapidated as the outside, with broken furniture and debris littering the floor. But you don't care. You just need a place to rest. You find a corner of the room that seems relatively clean, and you lay down, your eyes already starting to droop.", 0.03)
      puts "\n"
      puts "\n"
      sleep(3)
      print_with_typing("The next thing you know, you're waking up in a daze. You blink a few times, trying to clear your head, and slowly sit up. The old man is still snoring softly beside you. You feel well-rested, but still a little sore from the battle.", 0.03)
      puts "\n"
      puts "\n"
      print_with_typing("You stand up and stretch, feeling the stiffness in your muscles. As you move towards the door, you notice something glinting on the ground. You pick it up and realize it's a small, metal street sign.", 0.03)
      puts "\n"
      puts "\n"
      print_with_typing("You squint at the words on the sign, trying to make out the faded lettering. After a moment, you're able to make out the two names: Latte Woods and Espresso Lane. You don't recognize either one.", 0.03)
      puts "\n"
      puts "\n"
      print_with_typing("But as you look out the window, you realize that you're standing at a crossroads. In the west lies Latte Woods, and in the east lies Espresso Lane. You know that you need to choose a direction, and soon.", 0.03)
      puts "\n"
      puts "\n"
      puts "a. Go West (easy mode)"
      puts "b. Go East (hard mode)"
      puts"\n"
      player_choice = gets.chomp.downcase
      if player_choice == "a"
        puts "You went west"
      end
      if player_choice == "b"
        puts "You went east"
      end
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
      puts "\n"
      puts "\n"
      print_with_typing("You rest for a few hours, trying to catch your breath and gather your thoughts. You know you can't stay in one place for too long, so you set out to find shelter and food. The world around you is bleak and desolate, and you can't help but feel a sense of despair.", 0.03)
      puts "\n"
      puts "\n"
      print_with_typing("As you walk, you come across the ruins of an old town. The buildings are crumbling, and the streets are littered with debris. You start to search for any signs of life, but all you find are abandoned homes and empty streets.", 0.03)
      puts "\n"
      puts "\n"
      print_with_typing("Just when you start to lose hope, you see a road sign up ahead. It reads Latte Woods - West and Espresso Lane - East.You're not sure where to go, but you know that you need to make a decision soon.", 0.03)
      puts "\n"
      puts "\n"
      print_with_typing("You weigh your options carefully. Latte Woods might offer some semblance of safety and security, but it's also a prime target for raiders and other dangers. Espresso Lane, on the other hand, might be more dangerous, but it could also offer more resources and opportunities.", 0.03)
      puts "\n"
      puts "\n"
      puts "a. Go West (easy mode)"
      puts "b. Go East (hard mode)"
      puts"\n"
      player_choice = gets.chomp.downcase
      if player_choice == "a"
        puts "You went west"
      end
      if player_choice == "b"
        puts "You went east"
      end
      player_choice = nil 
    end 
  end 

  if player_choice == "b"
    print_with_typing("As the player walked away from the old man's ramblings, they couldn't shake off the feeling of unease. The old man's words echoed in their mind, and they couldn't help but wonder what could have happened if they stayed a little longer.", 0.03)
    puts "\n"
    puts "\n"
    print_with_typing("As they walked down the path towards the road sign, the player felt a chill run down their spine. The woods around them were dark and ominous, the leaves rustling underfoot. The air was thick with the scent of pine needles and damp earth.", 0.03)
    puts "\n"
    puts "\n"
    print_with_typing("The road sign loomed ahead, its faded letters barely legible in the dim light. The player approached the sign, their eyes flickering between the two options. They hesitated for a moment, unsure of which way to go, before finally deciding to head west towards Latte Woods.", 0.03)
    puts "\n"
    puts "\n"
    print_with_typing("As they walked down the dirt path, the player couldn't shake off the feeling of guilt. What if they had stayed and listened to the old man's story? Could they have prevented what was about to happen?", 0.03)
    puts "\n"
    puts "\n"
    print_with_typing("After walking for what felt like hours, the player finally saw something in the distance. As they got closer, they realized with horror that it was the old man, crucified and robbed. The smell of blood and decay filled the air, and the player felt sick to their stomach.", 0.03)
    puts "\n"
    puts "\n"
    print_with_typing("They couldn't help but feel responsible for what had happened. If only they had stayed and listened, maybe they could have helped the old man. But now, it was too late. The player couldn't shake off the image of the old man's lifeless body, and the guilt weighed heavy on their shoulders.", 0.03)
    puts "\n"
    puts "\n"
    print_with_typing("As the player reaches the crossroads, they come across a new road sign. It points to Latte Woods on the left and Espresso Lane on the right. The player weighs their options, knowing that one path will be easier than the other.", 0.03)
    puts "\n"
      puts "\n"
      puts "a. Go West (easy mode)"
      puts "b. Go East (hard mode)"
      puts"\n"
      player_choice = gets.chomp.downcase
      if player_choice == "a"
        puts "You went west"
      end
      if player_choice == "b"
        puts "You went east"
      end
      player_choice = nil 
  end 
end 