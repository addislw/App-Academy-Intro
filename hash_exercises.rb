# Write a method get_double_age that takes in a hash and returns twice the "age" value of the hash

def get_double_age(hash)
  hash["age"] * 2
end

puts get_double_age({"name"=>"App Academy", "age"=>5}) # => 10
puts get_double_age({"name"=>"Ruby", "age"=>23})       # => 46



# Write a method get_full_name that takes in a hash containing a first, last, and title. The method should return a string representing the hash's full name

def get_full_name(hash)
  "#{hash["first"]} #{hash["last"]}, the #{hash["title"]}"
end

hash1 = {"first"=>"Michael", "last"=>"Jordan", "title"=> "GOAT"}
puts get_full_name(hash1) # => "Michael Jordan, the GOAT"

hash2 = {"first"=>"Fido", "last"=>"McDog", "title"=> "Loyal"}
puts get_full_name(hash2) # => "Fido McDog, the Loyal"



# Write a method word_lengths that takes in a sentence string and returns a hash where every key is a word of the sentence, and its' corresponding value is the length of that word

# Solution 1
def word_lengths(sentence)
  array = sentence.split.map { |ele| [ele, ele.length] }
  array.to_h
end

=begin
# Solution 2
def word_lengths(sentence)
  array = sentence.split 
  hash = {}

  array.each { |word| hash[word] = word.length }
  hash 
end
=end

puts word_lengths("this is fun") #=> {"this"=>4, "is"=>2, "fun"=>3}
puts word_lengths("When in doubt, leave it out") #=> {"When"=>4, "in"=>2, "doubt,"=>6, "leave"=>5, "it"=>2, "out"=>3}



