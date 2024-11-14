=begin
  Rollercoaster - Lisa Insurtech

  Challenge: Given an array of integers, rearrange the elements to form a 
  "rollercoaster" pattern. In this pattern, the elements alternate between 
  increasing and decreasing order. Specifically, the first element should be 
  less than the second, the second should be greater than the third, and so on.

  Input:
  - An array of integers.

  Output:
  - An array of integers rearranged in a rollercoaster pattern.

=end

def rollercoaster(array)
  sortedArray = array.sort
  rollercoasterArray = Array.new(sortedArray.length)
  for i in (0...sortedArray.length).step(2)
    rollercoasterArray[i] = sortedArray[i + 1]
    rollercoasterArray[i + 1] = sortedArray[i]
  end
  rollercoasterArray.select { |number| !number.nil? }
end

p rollercoaster([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) # [2, 1, 4, 3, 6, 5, 8, 7, 10, 9]
p rollercoaster([3, 4, 1, 2, 5, 10, 9]) # [2, 1, 4, 3, 9, 5, 10]