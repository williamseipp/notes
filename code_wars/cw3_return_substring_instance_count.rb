# Complete the solution so that it returns the number of
# times the search_text is found within the full_text.
#   Overlap is not permitted : "aaa" contains 1 instance of
# "aa", not 2.

# go through full_text, looking for instances of search_text
# when you find an instance of this, increment the value of 'match' by 1
#
# input: two strings; full and search text
# output: integer ( number of occurences of search_text within full_text)

# can either argument be 'nil'
# can either argument contain spaces, or non-alphabetic characters like numbers and punctuation

# data: single integer holding the number of occurences

# ALGO:
#
# set some variable 'number_of_matches' to 0
# iterate through full_text string
# if a match is found, increment the value of number_of_matches by 1
#
#   question to me: what does it mean to "find a match"?
#             all characters of search_text are in a given substring within full_text
#
#    question: can I find the number of occurences by using the split method, and use
#           the search_text as the delimeter? Then add up the number of spaces within
#           the split text as the count
#
# return number_of_matches
#
def solution(full_text, search_text)
  matches = 0
  full_text.gsub!(search_text, ' ')
  # count = full_text.count(search_text)
  # p count
  full_text.each_char do |letter|
    matches += 1 if letter == ' '
  end

  matches
end

p solution('abcdeb', 'b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1
