# Write a method count_e(word) that takes in a string word and returns the number of e's in the word

def count_e(word)
  count = 0

  i = 0 
  while i < word.length
    count += 1 if word[i] == 'e'
    i += 1
  end

  count
end

puts count_e("movie") # => 1
puts count_e("excellent") # => 3



# Write a method count_a(word) that takes in a string word and returns the number of a's in the word. The method should count both lowercase (a) and uppercase (A)

def count_a(word)
  count = 0

  i = 0
  while i < word.length
    count += 1 if word[i].downcase == 'a'
    i += 1
  end

  count
end

puts count_a("application")  # => 2
puts count_a("bike")         # => 0
puts count_a("Arthur")       # => 1
puts count_a("Aardvark")     # => 3



# Write a method, count_vowels(word), that takes in a string word and returns the number of vowels in the word. Vowels are the letters a, e, i, o, u

def count_vowels(word)
  vowels = 'aeiou'
  count = 0 

  i = 0
  while i < word.length
    char = word[i]
    count += 1 if vowels.include?(char)
    i += 1 
  end

  count 
end

puts count_vowels("bootcamp")  # => 3
puts count_vowels("apple")     # => 2
puts count_vowels("pizza")     # => 2



# Write a method sum_nums(max) that takes in a number max and returns the sum of all numbers from 1 up to and including max

def sum_nums(max)
  sum = 0 
  (1..max).each { |i| sum += i }
  sum 
end

puts sum_nums(4) # => 10
puts sum_nums(5) # => 15



# Write a method factorial(num) that takes in a number num and returns the product of all numbers from 1 up to and including num

def factorial(num)
  product = 1
  (1..num).each { |i| product *= i }
  product
end

puts factorial(3) # => 6, because 1 * 2 * 3 = 6
puts factorial(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120



# Write a method reverse(word) that takes in a string word and returns the word with its letters in reverse order

def reverse(word)
  reverse_word = ''

  i = 0 
  while i < word.length
    char = word[i]
   reverse_word = char + reverse_word
    i += 1
  end

  reverse_word
end

puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"



# Write a method is_palindrome(word) that takes in a string word and returns the true if the word is a palindrome, false otherwise. A palindrome is a word that is spelled the same forwards and backwards
# Uses previous method as helper!
def is_palindrome(word)
  word == reverse(word)
end

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false