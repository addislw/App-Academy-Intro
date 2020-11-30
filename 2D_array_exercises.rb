# Write a method combinations that takes in an array of unique elements, the method should return a 2D array representing all possible combinations of 2 elements of the array

# Simple solution using built-in array method
=begin
def combinations(array)
  array.combination(2).to_a
end
=end

def combinations(array)
  combination_array = []
  array.each_with_index do |ele1, idx1|
    array.each_with_index do |ele2, idx2|
      combination_array << [ele1, ele2] if idx2 > idx1
    end
  end

  combination_array
end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts



# Write a method opposite_count that takes in an array of unique numbers. The method should return the number of pairs of elements that sum to 0

# Solution 1
def opposite_count(array)
  count = 0 
  array.combination(2).to_a.each do |nums|
    count += 1 if nums.sum == 0
  end

  count
end

# Solution 2 
=begin
def opposite_count(array)
  count = 0 
  
  array.each_with_index do |ele1, idx1|
    array.each_with_index do |ele2, idx2|
      if idx2 > idx1 && ele1 + ele2 == 0 
        count += 1 
      end
    end
  end

  count
end
=end

p opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
p opposite_count([ 21, -23, 24 -12, 23 ]) # => 1



# Write a method two_d_sum that takes in a two dimensional array and returns the sum of all elements in the array

=begin
# Solution using built-in flatten and sum method
def two_d_sum(array)
  array.flatten.sum
end
=end

# Solution 2
def two_d_sum(array)
  sum = 0 
  array.each do |sub_array|
    sub_array.each do |num|
      sum += num 
    end
  end

  sum
end

array_1 = [
  [4, 5],
  [1, 3, 7, 1]
]
puts two_d_sum(array_1)    # => 21

array_2 = [
  [3, 3],
  [2],
  [2, 5]
]
puts two_d_sum(array_2)    # => 15
