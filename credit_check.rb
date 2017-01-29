# Author: Mark Stover
# Project: Credit check
# Use CreditCheck class to check if an account number is valid or not. Pass
# CreditCheck an account number of any size.

class CreditCheck
  attr_reader :acct_number
  def initialize(acct_number)
    @acct_number = acct_number
    create_processing_number
    double_odds
    final_collection
    sum_collection
    valid?
  end

  def create_processing_number
    @processing_number = @acct_number.reverse.split("")
  end

  def double_odds
    @double_odds = @processing_number.map.with_index do |value, index|
      if index.odd?
        value.to_i * 2
      else
        value.to_i
      end
    end
  end

  def final_collection
    @final_collection = @double_odds.map{ |number| number > 9 ? number - 9: number }
  end

  def sum_collection
    @sum_collection = @final_collection.inject(0,:+)
  end

  def valid?
    @sum_collection % 10 == 0
  end
end

credit_check_1 = CreditCheck.new("342804633855673")
credit_check_1.create_processing_number
credit_check_1.double_odds
credit_check_1.final_collection
credit_check_1.sum_collection

if credit_check_1.valid?
  puts "The number is valid!"
else
  puts "The number is invalid!"
end


# card_number = "342804633855673"
# create_processing_number
# double_odds
# final_collection



# full_number = card_number.reverse.split("")
#
# doubles = full_number.map.with_index do |value, index|
#   if index.odd?
#     value.to_i * 2
#   else
#     value.to_i
#   end
# end
#
# final_collection = doubles.map { |number| number > 9 ? number - 9: number }
#
# sum = final_collection.inject(0, :+)
#
# if sum % 10 == 0
#   puts "The number is valid!"
# else
#   puts "The number is invalid!"
# end
#
# if sum % 10 == 0
#   puts "The number is valid!"
# else
#   puts "The number is invalid!"
# end
