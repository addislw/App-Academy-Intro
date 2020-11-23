# Write a method average_of_three(num1, num2, num3) that returns the average of three numbers

=begin
def average_of_three(num1, num2, num3)
  (num1 + num2 + num3) / 3.0
end
=end

def average_of_three(num1, num2, num3)
  sum = num1 + num2 + num3 
  avg = sum / 3
  return avg
end

# tests
puts average_of_three(3, 7, 8)   # => 6.0
puts average_of_three(2, 5, 17)  # => 8.0
puts average_of_three(2, 8, 1)   # => 3.666666



# Write a method goodbye(name) that takes in a string name and returns a string saying bye to that name

def goodbye(name)
  return "Bye #{name}."
end

puts goodbye("Daniel")   # => "Bye Daniel."
puts goodbye("Mark")     # => "Bye Mark."
puts goodbye("Beyonce")  # => "Bye Beyonce."



# Write a method is_div_by_5(number) that takes in a number and returns the boolean true if the given number is divisible by 5, false otherwise

def is_div_by_5(number)
  if number % 5 == 0 
   return true
  end
  
  false
end

puts is_div_by_5(10) # => true
puts is_div_by_5(40) # => true
puts is_div_by_5(42) # => false
puts is_div_by_5(8)  # => false



# Write a method either_only(number) that takes in a number and returns true if the number is divisible by either 3 or 5, but not both. The method should return false otherwise

def either_only(number)
  if (number % 3 == 0 || number % 5 == 0) && !(number % 3 == 0 && number % 5 == 0)
	return true
  end
  
  false
end

puts either_only(9)  # => true
puts either_only(20) # => true
puts either_only(7)  # => false
puts either_only(15) # => false
puts either_only(30) # => false



# Write a method larger_number(num1, num2) that takes in two numbers and returns the larger of the two numbers

def larger_number(num1, num2)
  if num1 > num2
    return num1
  else
    return num2
  end
end

puts larger_number(42, 28)   # => 42
puts larger_number(99, 100)  # => 100



# Write a method longer_string(str1, str2) that takes in two strings and returns the longer of the two strings. In the case of a tie, the method should return the first string

def longer_string(str1, str2)
  if str1 >= str2
    return str1
  else
    return str2
  end

end

puts longer_string("app", "academy") # => "academy"
puts longer_string("summer", "fall") # => "summer"
puts longer_string("hello", "world") # => "hello"



# Write a method number_check(num) that takes in a number and returns a string. The method should return the string 'positive' if the num is positive, 'negative' if the num is negative, and 'zero' if the num is zero

def number_check(num)

  if num > 0 
    return 'positive'
  elsif num < 0 
    return 'negative'
  else 
    return 'zero'
  end

end

puts number_check(6)    # => "positive"
puts number_check(-2)   # => "negative"
puts number_check(0)    # => "zero"



# Write a method word_check(word) that takes in a word and returns a string. The method should return the string "long" if the word is longer than 6 characters, "short" if it is less than 6 characters, and "medium" if it is exactly 6 characters long

def word_check(word)
  if word.length > 6
    return "long"
  elsif word.length < 6
    return "short"
  else
    return "medium"
  end
end

puts word_check("contraption") # => "long"
puts word_check("fruit")       # => "short"
puts word_check("puzzle")      # => "medium"