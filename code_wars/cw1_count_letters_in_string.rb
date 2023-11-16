# In this kata, you've to count lowercase letters in a given string and return
#   the letter count in a hash with 'letter' as key and count as 'value'. The key
#   must be 'symbol' instead of string in Ruby and 'char' instead of string in

# write a method that takes a string argument
# return a Hash with keys in the form of symbols ( each symbol is a letter)
# and the values as integers ( the count of how many occurences of this letter)
#
#
# go through each letter of the word
# if the letter exists in the hash, increment value by 1
# if the letter does not exist already, create a key/value pair, value is 0

def letter_count(word)
  hash = {}
  word.each_char do |letter|
    if hash[letter.to_sym].nil?
      # if there is no k/v already, create it and set the value to 1
      hash[letter.to_sym] = 1
    else
      # does exist, just increment the count
      hash[letter.to_sym] += 1
    end
  end

  p hash
end

p letter_count('codewars') == { a: 1, c: 1, d: 1, e: 1, o: 1, r: 1, s: 1, w: 1 }
p letter_count('activity') == { a: 1, c: 1, i: 2, t: 2, v: 1, y: 1 }
p letter_count('arithmetics') == { a: 1, c: 1, e: 1, h: 1, i: 2, m: 1, r: 1, s: 1, t: 2 }
