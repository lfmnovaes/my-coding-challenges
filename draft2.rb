def unique_permutation(n, k)
  arr = (1..n).to_a
  unique_permut = []
  arr.permutation.each { |x| unique_permut.push(x.to_a) }
  unique_permut[k-1].join.to_s
end

p unique_permutation(3, 3) # "213"
p unique_permutation(4, 9) # "2314"