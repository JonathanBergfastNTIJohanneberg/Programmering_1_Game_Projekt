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



