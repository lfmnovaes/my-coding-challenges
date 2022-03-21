# https://www.codewars.com/kata/52fba66badcd10859f00097e/train/ruby

def disemvowel(str)
  vowels = 'aeiou'
  str.chars.select{ |char| !vowels.include?(char.downcase) }.join
end

puts disemvowel("This website is for losers LOL!") # "Ths wbst s fr lsrs LL!"
