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

final_collection = doubles.map { |number| number > 9 ? number - 9: number }

sum = final_collection.inject(0, :+)

if sum % 10 == 0
  puts "The number is valid!"
else
  puts "The number is invalid!"
end

if sum % 10 == 0
  puts "The number is valid!"
else
  puts "The number is invalid!"
end
