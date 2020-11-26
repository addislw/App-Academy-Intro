# Write a method to_initials that takes in a person's name string and returns a string representing their initials

def to_initials(name)
  initials = ''
  name.split.each { |part| initials += part[0] }
  initials
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"



# Write a method first_in_array that takes in an array and two elements, the method should return the element that appears earlier in the array

def first_in_array(arr, el1, el2)
  arr.index(el1) < arr.index(el2) ? el1 : el2
end

puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"