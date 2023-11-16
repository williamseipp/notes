# Given a string of integers, return the number of
# odd-numbered substrings that can be formed.

#   For example, in the case of "1341", they are 1, 1, 3,
# 13, 41, 341, 1341, a total of 7 numbers.

#   solve("1341") = 7.

# input: string
# output: integer
#
# you are given a string of integers
# 1 3 4 1
#
# 1, 13, 134, 1341
# 3, 34, 341
# 4, 41
# 1
#
# go through the string input
# and create all possible substrings and save in a list called "substrings"
#
# go through this list of substrings
# convert this substring to an integer
#   if this integer is odd, then increment the value of 'odd_substring'
#
#
# return 'odd_substring'

def solve(string)
  odd_substring = 0
  substrings = []

  left = 0
  right = 0
  loop do
    right = left
    loop do
      substrings << string.slice(left..right)
      break if right == string.size - 1

      right += 1
    end
    break if left == string.size - 1

    left += 1
  end
  substrings.each { |number| odd_substring += 1 if number.to_i.odd? }
  odd_substring
end

p solve('1341') == 7
p solve('1357') == 10
p solve('13471') == 12
p solve('134721') == 13
p solve('1347231') == 20
p solve('13472315') == 28
