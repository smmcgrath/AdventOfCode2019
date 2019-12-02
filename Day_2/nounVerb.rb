for noun_count in 0..99 do
    
    for verb_count in 0..99

        string_array = File.read("input").split(",")
        int_array = string_array.map{|x| x.to_i}
        
        int_array[1] = noun_count
        int_array[2] = verb_count
        
        i=0
        
        until i >= int_array.length
            if int_array[0] === 19690720
                puts noun_count
                puts verb_count
                return 
            elsif int_array[i] === 1
                int_array[int_array[i + 3]] = int_array[int_array[i + 1]] + int_array[int_array[i + 2]]
            elsif int_array[i] === 2 || int_array[i] === 99
                int_array[int_array[i + 3]] = int_array[int_array[i + 1]] * int_array[int_array[i + 2]]
            end
            i += 4
        end
    end
end