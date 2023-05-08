def validator(options,user_input,message)
    
    i=0
    p options[i]
    while i < options.length
        while options[i] != user_input
            if options[i] == i
                break
            end
            puts message   
        end
        i+=1
        user_input = gets.chomp.downcase
    end
end
input = gets.chomp
validator(["a","b","c"],input,"wrong alt")

