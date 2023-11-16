# Complete the function scramble(str1, str2) that returns
# true if a portion of str1 characters can be rearranged to
# match str2, otherwise returns false.

#   Notes:

# Only lower case letters will be used (a-z). No punctuation
# or digits will be included. Performance needs to be
# considered.

# input: string1, string2
# output: true or false
#
# are all the characters of string2 inside string1?

def scramble(string1, string2)
  string2.each_char.all? { |letter| string1.include?(letter) }
end
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
