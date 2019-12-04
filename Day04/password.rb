lower_bound = 248345
upper_bound = 746315
range = 746315 - 248345
array = range.to_s.chars.map(&:to_i)

def adjacent_same? arr
    if arr.each_cons(2).any?{|left, right | left === right}
        return true
    end
end

def ascending_sort? arr
    if arr == arr.sort
        return true
    end 
end

count=0
number=lower_bound
while number <= upper_bound do
    array = number.to_s.chars.map(&:to_i)
    if ascending_sort? array
        if adjacent_same? array
            count+=1
        end 
    end 
    number+=1
end
print count