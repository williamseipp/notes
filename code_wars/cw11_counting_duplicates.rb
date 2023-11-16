# Count the number of Duplicates

# Write a function that will return the count of distinct case-insensitive
# alphabetic characters and numeric digits that occur more than once in the input
#   string. The input string can be assumed to contain only alphabets (both
#     uppercase and lowercase) and numeric digits. Example

# EXAMPLES
# "abcde" -> 0 # no characters repeats more than once
# "aabbcde" -> 2 # 'a' and 'b'
# "aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
# "indivisibility" -> 1 # 'i' occurs six times "Indivisibilities" -> 2 # 'i'
# occurs seven times and 's' occurs twice "aA11" -> 2 # 'a' and '1' "ABBA" -> 2 #
# 'A' and 'B' each occur twice
#
#
# rewritten problem: write a method that takes a string and returns a number.
#   this is the number of characters that repeat themselves
#   we are NOT counting the number of duplicates in the input string
#   rather, we are counting the number of characters that repeat themselves
#
# DATA: I want a hash where the letter is the key and the number of occurences
#         is the value

# ALGO: create an empty hash called 'occurences'
#     go through each character in the input string
#       if the key exists in hash already, increment the value in the hash by 1
#       if it doesnt, create the key/value pair and set the value to 1
#
#     now you have a hash of every character found, and the amount of times
#       it is found in the input string
#
#     create a variable called duplicate_chars and set to 0
#     iterate through the hash, and for every value that is greater than 1
#       increment duplicate_chars by 1
#
#     return duplicate_chars

def duplicate_count(word)
  occurences = {}
  duplicate_chars = 0
  word.each_char do |letter|
    if !occurences[letter.upcase].nil?
      occurences[letter.upcase] += 1
    else
      occurences[letter.upcase] = 1
    end
  end
  occurences.values.each { |value| duplicate_chars += 1 if value > 1 }

  duplicate_chars
end
p duplicate_count('') == 0
p duplicate_count('abcde') == 0
p duplicate_count('abcdeaa') == 1
p duplicate_count('abcdeaB') == 2
p duplicate_count('Indivisibilities') == 2
