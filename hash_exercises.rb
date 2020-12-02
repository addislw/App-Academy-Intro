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



# Write a method retrieve_values that takes in two hashes and a key. The method should return an array containing the values from the two hashes that correspond with the given key

def retrieve_values(hash1, hash2, key)
  array = []
  array.push(hash1[key], hash2[key])

end

dog1 = {"name"=>"Fido", "color"=>"brown"}
dog2 = {"name"=>"Spot", "color"=> "white"}
print retrieve_values(dog1, dog2, "name") #=> ["Fido", "Spot"]
puts
print retrieve_values(dog1, dog2, "color") #=> ["brown", "white"]
puts



# Write a method cat_builder that takes in a name, color, and age. The method should return a hash representing a cat with those values

def cat_builder(name, color, age)
  cat = {'name' => name, color: color, age: age}
end

print cat_builder("Whiskers", "orange", 3) #=> {"name"=>"Whiskers", "color"=>"orange", "age"=>3}
puts

print cat_builder("Salem", "black", 100) #=> {"name"=>"Salem", "color"=>"black", "age"=>100}
puts



# Write a method ae_count that takes in a string and returns a hash containing the number of a's and e's in the string. Assume the string contains only lowercase characters

def ae_count(string)
  hash = Hash.new(0)
  string.each_char do |char|
    if char == 'a' || char == 'e'
      hash[char] += 1 
    end
  end

  hash
end

puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}