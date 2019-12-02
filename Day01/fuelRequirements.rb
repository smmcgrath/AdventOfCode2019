sum_fuel_needs=0
File.open('inputs.txt').each do |line|
    reqs = (line.to_i / 3).floor() - 2
    sum_fuel_needs += reqs
end
print sum_fuel_needs