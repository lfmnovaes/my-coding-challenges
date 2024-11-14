=begin
  Unique Permutation - Lisa Insurtech

  Challenge: Given two integers `n` and `k`, generate all possible permutations 
  of the sequence of numbers from `1` to `n`. Return the `k`-th permutation 
  in lexicographical order as a string.

  Input:
  - `n`: An integer representing the range of numbers from `1` to `n`.
  - `k`: An integer representing the position of the permutation to return (1-based index).

  Output:
  - A string representing the `k`-th permutation of the sequence in lexicographical order.

  Constraints:
  - Assume `1 <= n <= 9` and `1 <= k <= n!` (factorial of `n`).
=end

def unique_permutation(n, k)
  arr = (1..n).to_a
  unique_permut = []
  arr.permutation.each { |x| unique_permut.push(x.to_a) }
  unique_permut[k-1].join.to_s
end

p unique_permutation(3, 3) # "213"
p unique_permutation(4, 9) # "2314"
