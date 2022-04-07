# https://www.codewars.com/kata/5262119038c0985a5b00029f/train/ruby
#
# Define a function that takes one integer argument and returns logical value true or false depending on if the integer is a prime.
# 
# Per Wikipedia, a prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.
# 
# Requirements
# You can assume you will be given an integer input.
# You can not assume that the integer will be only positive. You may be given negative numbers as well (or 0).
# NOTE on performance: There are no fancy optimizations required, but still the most trivial solutions might time out. Numbers go up to 2^31 (or similar, depends on language version). Looping all the way up to n, or n/2, will be too slow.

def isPrime(num)
  require 'prime'
  num.prime?
end

puts isPrime(4) # false
puts isPrime(100) # false
puts isPrime(999) # false
puts isPrime(958297) # false
puts isPrime(-7) # false
puts isPrime(2) # true
puts isPrime(3) # true
puts isPrime(5) # true
puts isPrime(457) # true
puts isPrime(39229) # true
