lower_bound, upper_bound = 248345, 746315

def adjacent_same? arr
    if arr.each_cons(2).any?{|left, right| left === right}
        return true
    end
end

def ascending_sort? arr
    if arr === arr.sort
        return true
    end 
end

count=0
number=lower_bound
while number < upper_bound do
    array = number.to_s.chars.map(&:to_i)
    if ascending_sort? array
        if adjacent_same? array
            h = Hash.new(0)
            array.each { | v | h.store(v, h[v]+1) }
            pocket = []

            h.each do |key, value|
                pocket.push(value)
            end

            if (pocket.include? 2)
                count+=1
            else
                print ''
            end
        end 
    end 
    number+=1
end
print count