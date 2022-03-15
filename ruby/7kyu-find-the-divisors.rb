# https://www.codewars.com/kata/544aed4c4a30184e960010f4/train/ruby
#
# Create a function named divisors/Divisors that takes an integer n > 1 and returns an array with all of the integer's divisors(except for 1 and the number itself), from smallest to largest. If the number is prime return the string '(integer) is prime' (null in C#) (use Either String a in Haskell and Result<Vec<u32>, String> in Rust).
# 
# Example:
# divisors(12) # should return [2,3,4,6]
# divisors(25) # should return [5]
# divisors(13) # should return "13 is prime"

def divisors(n)
  require 'prime'
  return "#{n} is prime" if Prime.prime?(n)
  divisors = []
  for i in 2..(n/2)
    divisors << i if (n%i == 0)
  end
  divisors
end

p divisors(15) # [3,5]
p divisors(253) # [11,23]
p divisors(24) # [2,3,4,6,8,12]
