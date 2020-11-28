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



# Write a method abbreviate_sentence that takes in a sentence string and returns a new sentence where every word longer than 4 characters has all of it's vowels removed

def abbreviate_sentence(sent)
  vowels = 'aeiou'
  new_sent = []
  sent.split.each do |ele|
    if ele.length > 4
      ele.each_char { |char| vowels.include?(char) ? next : new_sent << char }
    else 
      new_sent << ele 
    end
    
    new_sent << ' ' if ele != sent.split.last
  end

  new_sent.join
end

p abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
p abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"



# Write a method format_name that takes in a name string and returns the name properly capitalized

def format_name(name)
  name.split.map(&:capitalize)
  .join(' ')
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"



# Write a method is_valid_name that takes in a string and returns a boolean indicating whether or not it is a valid name

def is_valid_name(name)
  return false if name.split.length < 2
  name == format_name(name)
end

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false



# Write a method is_valid_email that takes in a string and returns a boolean indicating whether or not it is a valid email address 

def is_valid_email(str)
  str_arr = str.split('@')
  return false if str_arr.length != 2
     
  first = str_arr[0]
  second = str_arr[1]
  if !(first[/[a-zA-Z]+/]  == first)
    return false 
  elsif second.split('.').length == 2
    return true
  else
    return false 
  end

end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false



# Write a method reverse_words that takes in a sentence string and returns the sentence with the order of the characters in each word reversed. Note that we need to reverse the order of characters in the words, do not reverse the order of words in the sentence

# Makes use of built in reverse method 
def reverse_words(sentence)
  # sentence_array = sentence.split
  sentence.split.map(&:reverse)
  .join(' ')

end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'
     


# Write a method rotate_array that takes in an array and a number. The method should return the array after rotating the elements the specified number of times. A single rotation takes the last element of the array and moves it to the front

def rotate_array(arr, num)
  num.abs.times do |i|
    if num < 0
      ele = arr.shift
      arr.push(ele)
    else
      ele = arr.pop 
      arr.unshift(ele)
    end
  end
  arr
end

# Does not handle negative number argument 
=begin
def rotate_array(arr, num)
  num.times do |i|
      ele = arr.pop 
      arr.unshift(ele)
  end
  arr
end
=end

print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array([ "a", "b", "c", "d", "e" ], 2) # => [ "d", "e", "a", "b", "c" ]
puts

print rotate_array([ "a", "b", "c", "d", "e" ], -2) # => [ "c", "d", "e", "a", "b" ]
puts