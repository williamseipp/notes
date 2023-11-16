# A pangram is a sentence that contains every single letter
# of the alphabet at least once. For example, the sentence
# "The quick brown fox jumps over the lazy dog" is a
# pangram, because it uses the letters A-Z at least once
# (case is irrelevant).

#   Given a string, detect whether or not it is a pangram.
# Return True if it is, False if not. Ignore numbers and
# punctuation.

# is every letter of the alphabet included in sentence?
# problem: test if one set of data includes every element of another set
#
# input: string
# output: true or false
#
# example: that phrase
#
# data: array or string that contains every letter of alphabet
#       that we can compare letters of input to
#
#  is every letter of alphabet included in sentence?
#  iterate through alphabet
#   if letter isnt included in sentence, return false
#   if it is, go to next letter
#   return true if you've iterated through all letters of the alphabet
#      ( and a false value wasnt found )

def pangram?(sentence)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  alphabet.each_char.all? { |letter| sentence.include?(letter) }
end
p pangram?('The quick brown fox jumps over the lazy dog.') == true
p pangram?('This is not a pangram.') == false
