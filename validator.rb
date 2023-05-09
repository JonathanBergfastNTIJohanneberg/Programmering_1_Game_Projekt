def validator(options,user_input,message)
    
    i=0
    
    while i < options.length
       
            if options[i] == i
                break
            end
            puts message   
        
        i+=1
        user_input = gets.chomp.downcase
    end
end
input = gets.chomp
validator(["a","b","c"],input,"wrong alt")

