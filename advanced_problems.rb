# Write a method map_by_name that takes in an array of hashes and returns a new array containing the names of each hash

def map_by_name(hash_array)
  hash_array.map { |hash| hash["name"] }
end

pets = [
  {"type"=>"dog", "name"=>"Rolo"},
  {"type"=>"cat", "name"=>"Sunny"},
  {"type"=>"rat", "name"=>"Saki"},
  {"type"=>"dog", "name"=>"Finn"},
  {"type"=>"cat", "name"=>"Buffy"}
]
print map_by_name(pets) #=> ["Rolo", "Sunny", "Saki", "Finn", "Buffy"]
puts

countries = [
 {"name"=>"Japan", "continent"=>"Asia"},
 {"name"=>"Hungary", "continent"=>"Europe"},
 {"name"=>"Kenya", "continent"=>"Africa"},
]
print map_by_name(countries) #=> ["Japan", "Hungary", "Kenya"]
puts



# Write a method map_by_key that takes in an array of hashes and a key string. The method should returns a new array containing the values from each hash for the given key

def map_by_key(hash_array, key)
  hash_array.map { |hash| hash[key] }
end

locations = [
  {"city"=>"New York City", "state"=>"New York", "coast"=>"East"},
  {"city"=>"San Francisco", "state"=>"California", "coast"=>"West"},
  {"city"=>"Portland", "state"=>"Oregon", "coast"=>"West"},
]

print map_by_key(locations, "state") #=> ["New York", "California", "Oregon"]
puts
print map_by_key(locations, "city") #=> ["New York City", "San Francisco", "Portland"]
puts



# Write a method yell_sentence that takes in a sentence string and returns a new sentence where every word is yelled. See the examples. Use map to solve this

def yell_sentence(string)
  string.split.map { |word| "#{word.upcase}!" }
  .join(' ')
end

puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"



# Write a method whisper_words that takes in an array of words and returns a new array containing a whispered version of each word. See the examples. Solve this using map

def whisper_words(word_array)
  word_array.map { |word| "#{word.downcase}..." }
end

print whisper_words(["KEEP", "The", "NOISE", "down"]) # => ["keep...", "the...", "noise...", "down..."]
puts



# Write a method o_words that takes in a sentence string and returns an array of the words that contain an "o". Use select in your solution

def o_words(string)
  string.split.select { |word| word.include?('o') }
end

print o_words("How did you do that?") #=> ["How", "you", "do"]
puts



# Write a method last_index that takes in a string and a character. The method should return the last index where the character can be found in the string

def last_index(string, char)
  i = string.length - 1
  while i >= 0
    cur_char = string[i]
    return i if char == cur_char

    i -= 1 
  end
end

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m")#=> 7



# Write a method most_vowels that takes in a sentence string and returns the word of the sentence that contains the most vowels

def most_vowels(string)
  words_array = string.split
  vowels = 'aeiou'
  hash = {}
  words_array.each do |word|
    hash[word] = count_vowels(word)
  end
  
  # hash.values.sort
  sorted = hash.sort_by { |k,v| v}
  sorted[-1][0]
end

def count_vowels(word)
  word = word.split('')
  vowels = 'aeiou'
  word.count { |char| vowels.include?(char) }
end

print most_vowels("what a wonderful life") #=> "wonderful"
puts



# Write a method prime? that takes in a number and returns a boolean, indicating whether the number is prime. A prime number is only divisible by 1 and itself

def prime?(num)
  return false if num <= 1
  (2...num).none? { |factor| num % factor == 0 }
end

puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false



# Write a method pick_primes that takes in an array of numbers and returns a new array containing only the prime numbers

def pick_primes(num_array)
  num_array.select { |num| prime?(num) }
end

def prime?(num)
  return false if num <= 1
  (2...num).none? { |factor| num % factor == 0 }
end

print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
puts
print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
puts



# Write a method prime_factors that takes in a number and returns an array containing all of the prime factors of the given number

def prime_factors(num)
  factor_array = []
  (2...num).each do |factor|
    if num % factor == 0 && prime?(factor)
      factor_array << factor
    end
  end

  factor_array
end

print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts



# Write a method greatest_factor_array that takes in an array of numbers and returns a new array where every even number is replaced with it's greatest factor. A greatest factor is the largest number that divides another with no remainder

def greatest_factor_array(array)
  new_array = []

  array.each do |num|
    if num % 2 != 0
      new_array << num 
    else
      possible_factors = num - 1 
      possible_factors.downto(1) do |i|
        if num % i == 0
          new_array << i 
          break
        end 
      end
    end
  end
  new_array
end

=begin
def greatest_factor(num)
  debugger
  num = num - 1
  num.downto(2) do |i|
    return i if num % i == 0
  end
end
=end


print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
puts
print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
puts



# Write a method perfect_square? that takes in a number and returns a boolean indicating whether it is a perfect square. A perfect square is a number that results from multiplying a number by itself. For example, 9 is a perfect square because 3 * 3 = 9, 25 is a perfect square because 5 * 5 = 25

def perfect_square?(num)
  (1..num).each do |factor|
    return true if factor * factor == num
  end

  false
end

puts perfect_square?(5)   #=> false
puts perfect_square?(12)  #=> false
puts perfect_square?(30)  #=> false
puts perfect_square?(9)   #=> true
puts perfect_square?(25)  #=> true



# Write a method triple_sequence that takes in two numbers, start and length. The method should return an array representing a sequence that begins with start and is length elements long. In the sequence, every element should be 3 times the previous element. Assume that the length is at least 1

def triple_sequence(start, length)
  array = [start]
  i = 1
  while i < length 
    previous_element = array[i - 1]
    array.push(previous_element * 3)
    i += 1
  end

  array
end

print triple_sequence(2, 4) # => [2, 6, 18, 54]
puts
print triple_sequence(4, 5) # => [4, 12, 36, 108, 324]
puts



# A number's summation is the sum of all positive numbers less than or equal to the number. For example: the summation of 3 is 6 because 1 + 2 + 3 = 6, the summation of 6 is 21 because 1 + 2 + 3 + 4 + 5 + 6 = 21. Write a method summation_sequence that takes in two numbers: start and length 
# The method should return an array containing length total elements. The first number of the sequence should be the start number. At any point, to generate the next element of the sequence we take the summation of the previous element. You can assume that length is not zero

def summation_sequence(start, length)
  array = [start]
  (length - 1).times do |i|
    current_element = array[-1]
    next_element = summation(current_element)
    array << next_element
  end

  array
end

def summation(num)
  sum = 0
  (1..num).each { |i| sum += i }
  sum
end

print summation_sequence(3, 4) # => [3, 6, 21, 231]
puts
print summation_sequence(5, 3) # => [5, 15, 120]
puts



# The fibonacci sequence is a sequence of numbers whose first and second elements are 1. To generate further elements of the sequence we take the sum of the previous two elements
# For example the first 6 fibonacci numbers are 1, 1, 2, 3, 5, 8. Write a method fibonacci that takes in a number length and returns the fibonacci sequence up to the given length

def fibonacci(n)
  return [] if n == 0
  return [1] if n == 1 

  array = [1, 1]
  while array.length < n
    array << array[-1] + array[-2]
  end

  array
end

print fibonacci(0) # => []
puts
print fibonacci(1) # => [1]
puts
print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts



# Write a method caesar_cipher that takes in a string and a number. The method should return a new string where every character of the original is shifted num characters in the alphabet

def caesar_cipher(string, num)
  alphabet = ('a'..'z').to_a
  chars = string.split('')
  chars.map do |char| 
    cur_idx = alphabet.index(char)
    new_idx = (cur_idx + num) % 26
    alphabet[new_idx]
  end
  .join
end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"



# Write a method vowel_cipher that takes in a string and returns a new string where every vowel becomes the next vowel in the alphabet

def vowel_cipher(string)
  vowels = ['a', 'e', 'i', 'o', 'u']
  chars = string.split('')
  chars.map do |char|
    if vowels.include?(char)
      cur_idx = vowels.index(char)
      new_idx = (cur_idx + 1) % 5
      vowels[new_idx]
    else
      char
    end
  end
  .join
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap



# Write a method that takes in a string and returns the number of times that the same letter repeats twice in a row

def double_letter_count(string)
  string_array = string.split('')
  count = 0 

  i = 1
  while i < string.length
    count += 1 if string[i] == string[i - 1]
    i += 1
  end

  count
end

puts double_letter_count("the jeep rolled down the hill") #=> 3
puts double_letter_count("bootcamp") #=> 1



# Write a method adjacent_sum that takes in an array of numbers and returns a new array containing the sums of adjacent numbers in the original array

def adjacent_sum(num_array)
  sum_array = []

  i = 1
  while i < num_array.length
    sum_element = num_array[i] + num_array[i - 1]
    sum_array << sum_element

    i += 1
  end

  sum_array
end

print adjacent_sum([3, 7, 2, 11]) #=> [10, 9, 13], because [ 3+7, 7+2, 2+11 ]
puts
print adjacent_sum([2, 5, 1, 9, 2, 4]) #=> [7, 6, 10, 11, 6], because [2+5, 5+1, 1+9, 9+2, 2+4]
puts



# Write a method pyramid_sum that takes in an array of numbers representing the base of a pyramid. The function should return a 2D array representing a complete pyramid with the given base. To construct a level of the pyramid, we take the sum of adjacent elements of the level below

def pyramid_sum(base)
  pyramid = [base]
  
  i = 0
  while i < base.length - 1
    current_level = pyramid[0]
    next_level = adjacent_sum(current_level)
    pyramid.unshift(next_level)

    i += 1
  end

  pyramid
end

print pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
puts
print pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
puts



# Write a method all_else_equal that takes in an array of numbers. The method should return the element of the array that is equal to half of the sum of all elements of the array. If there is no such element, the method should return nil

def all_else_equal(array)
  sum = array.sum
  target_half = sum / 2
  if array.include?(target_half)
    return target_half
  else
    return nil
  end
end

p all_else_equal([2, 4, 3, 10, 1]) #=> 10, because the sum of all elements is 20
p all_else_equal([6, 3, 5, -9, 1]) #=> 3, because the sum of all elements is 6
p all_else_equal([1, 2, 3, 4])     #=> nil, because the sum of all elements is 10 and there is no 5 in the array



# Write a method anagrams? that takes in two words and returns a boolean indicating whether or not the words are anagrams. Anagrams are words that contain the same characters but not necessarily in the same order

def anagrams?(word_1, word_2)
  permutations = word_1.split('').permutation.to_a
  check_word = word_2.split('')
  permutations.include?(check_word)
end

p anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false



# Write a method consonant_cancel that takes in a sentence and returns a new sentence where every word begins with it's first vowel

def consonant_cancel(string)
  vowels = 'aeiou'
  string = string.split
  new_string = []
  
  string.each do |word|
    word = word.split('')
    i = 0
    while i < word.length
      if !vowels.include?(word[0])
        word.shift
      end
      i += 1
    end
        
    new_string << word.join
  end
  
  new_string.join(' ')
end
# debugger
puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"



# Write a method same_char_collapse that takes in a string and returns a collapsed version of the string. To collapse the string, we repeatedly delete 2 adjacent characters that are the same until there are no such adjacent characters. 
# If there are multiple pairs that can be collapsed, delete the leftmost pair. For example, we take the following steps to collapse "zzzxaaxy": zzzxaaxy -> zxaaxy -> zxxy -> zy

def same_char_collapse(string)
  
  repeated = true
  # new_str = ''
  while repeated
    chars = string.split('')
    repeated = false
    chars.each.with_index do |char, idx|
      if chars[idx] == chars[idx + 1]
        chars[idx] = ''
        chars[idx + 1] = ''
        # string.shift(2)
        repeated = true
      end
    end
    string = chars.join
  end

  string
end

# debugger
puts same_char_collapse("zzzxaaxy")   #=> "zy"
because zzzxaaxy -> zxaaxy -> zxxy -> zy
puts same_char_collapse("uqrssrqvtt") #=> "uv"
because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv