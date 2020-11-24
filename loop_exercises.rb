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