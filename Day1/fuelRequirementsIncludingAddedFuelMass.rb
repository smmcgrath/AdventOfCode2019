sum_fuel_needs=0

def fuel_reqs(value)
    (value.to_i / 3).floor() - 2
end

File.open('inputs.txt').each do |line|
    reqs = fuel_reqs(line)
    sum_fuel_needs += reqs
    puts sum_fuel_needs
    while reqs >= 9
        reqs = fuel_reqs(reqs)
        puts reqs
        sum_fuel_needs += reqs
    end
end
print sum_fuel_needs