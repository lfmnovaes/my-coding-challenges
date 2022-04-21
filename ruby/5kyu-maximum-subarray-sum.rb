# https://www.codewars.com/kata/54521e9ec8e60bc4de000d6c/train/ruby
# 
# The maximum sum subarray problem consists in finding the maximum sum of a contiguous subsequence in an array or list of integers:
# 
# maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
# -- should be 6: [4, -1, 2, 1]
# Easy case is when the list is made up of only positive numbers and the maximum sum is the sum of the whole array. If the list is made up of only negative numbers, return 0 instead.
# 
# Empty list is considered to have zero greatest sum. Note that the empty list or array is also a valid sublist/subarray.

def max_sequence(arr)
  return 0 if arr.empty?
  return 0 if arr.all?(&:negative?)
  best_sum = 0
  current_sum = 0
  arr.each do |i|
    current_sum = [0, current_sum + i].max
    best_sum = [best_sum, current_sum].max
  end
  return best_sum
end

puts max_sequence([]) # 0
puts max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) # 6
puts max_sequence([11]) # 11
puts max_sequence([-32]) # 0
puts max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) #12
