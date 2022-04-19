# Complete the solution so that it splits the string into pairs of two characters.
# If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').

def solution(str)
  return [] if str.size == 0
  str << '_' if str.size % 2 == 1
  str.scan(/.{1,2}/)
end

p solution('abc') #  ["ab", "c_"]
p solution('abcdef') # ["ab", "cd", "ef"]
p solution("abcdefg") # ["ab", "cd", "ef", "g_"]
p solution("") # []