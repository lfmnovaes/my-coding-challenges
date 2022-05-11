# https://www.codewars.com/kata/51e056fe544cf36c410000fb/train/ruby
#
# A word is a string of letters (A to Z) optionally containing one or more apostrophes (') in ASCII.
# Apostrophes can appear at the start, middle or end of a word ('abc, abc', 'abc', ab'c are all valid)
# Any other characters (e.g. #, \, / , . ...) are not part of a word and should be treated as whitespace.
# Matches should be case-insensitive, and the words in the result should be lowercased.
# Ties may be broken arbitrarily.
# If a text contains fewer than three unique words, then either the top-2 or top-1 words should be returned, or an empty array if a text contains no words.

def top_3_words(text)
  hash = {}
  text
    .downcase
    .split(/[^'a-z]+/)
    .keep_if { |w| w =~ /\w/ }
    .each do |word|
      if hash[word]
        hash[word] += 1
      else
        hash[word] = 1
      end
    end
  hash.sort_by { |k, v| v }.last(3).map { |k, v| k }.reverse
end

p top_3_words('a a a  b  c c  d d d d  e e e e e') # ["e", "d", "a"]
p top_3_words('e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e') # ["e", "ddd", "aa"]
p top_3_words("  //wont won't won't ") # ["won't", "wont"]
p top_3_words('  , e   .. ') # ["e"]
p top_3_words('  ...  ') # []
p top_3_words("  '  ") # []
p top_3_words("  '''  ") # []
p top_3_words(
    'In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.'
  ) # ["a", "of", "on"]
