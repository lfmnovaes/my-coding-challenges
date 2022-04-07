# https://www.codewars.com/kata/517abf86da9663f1d2000003/ruby
# Complete the method/function so that it converts dash/underscore delimited words into camel casing.
# The first word within the output should be capitalized only if the original word was capitalized (known as Upper Camel Case, also often referred to as Pascal case).

def to_camel_case(str)
  first, *rest = str.split(/[-_]/)
  first.to_s + rest.map(&:capitalize).join
end

puts to_camel_case('') # ''
puts to_camel_case("the_stealth_warrior") # "theStealthWarrior"
puts to_camel_case("The-Stealth-Warrior") # "TheStealthWarrior"
puts to_camel_case("A-B-C") # "ABC"
