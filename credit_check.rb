# Author: Mark Stover
# Project: Credit check
# Use program to check if account number is valid or not

card_number = "342801633855673"
full_number = card_number.reverse.split("")

doubles = full_number.map.with_index do |value, index|
  if index.odd?
    value.to_i * 2
  else
    value.to_i
  end
end

converts = doubles.map.with_index do |value, index|
  if index.odd?
    value.to_s
  else
    value
  end
end

sum_converts = converts.map.with_index do |value, index|
  if index.odd?
    value[0].to_i + value[1].to_i
  else
    value
  end
end

total_sum = 0
sum_converts.map do |index|
  total_sum += index
end

if total_sum % 10 == 0
  puts "The number is valid!"
else
  puts "The number is invalid!"
end
