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
  