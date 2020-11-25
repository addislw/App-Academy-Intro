require 'byebug'
# Write a method doubler(numbers) that takes an array of numbers and returns a new array where every element of the original array is multiplied by 2

# long version
=begin
def doubler(nums)
  new_nums = []

  i = 0
  while i < nums.length
    num = nums[i]
    new_nums << num * 2 
    i += 1
  end

  new_nums
end
=end

def doubler(nums)
  return nums.map { |num| num * 2 }
end

print doubler([1, 2, 3, 4]) # => [2, 4, 6, 8]
puts
print doubler([7, 1, 8])    # => [14, 2, 16]
puts