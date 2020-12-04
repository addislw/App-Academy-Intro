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
