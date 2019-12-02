string_array = File.read("input").split(",")
int_array = string_array.map{|x| x.to_i}
# restore 1202 program alarm
int_array[1] = 12
int_array[2] = 2

i=0

until i >= int_array.length
    if int_array[i] === 1
        int_array[int_array[i + 3]] = int_array[int_array[i + 1]] + int_array[int_array[i + 2]]
    elsif int_array[i] === 2 || int_array[i] === 99
        int_array[int_array[i + 3]] = int_array[int_array[i + 1]] * int_array[int_array[i + 2]]
    end
    i += 4
end

print int_array[0]