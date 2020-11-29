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