# Complete the greatestProduct method so that it'll find the greatest product of
# five consecutive digits in the given string of digits.

# The input string always has more than five digits.

# go through the string input
# and create every possible substring of this that is length 5, place in array
#
#  in order to take all substrings of input that are 5 characters long,
#  I will define substrings by a starting and ending index ( position)
#  starting at the first letter in input string, I set the value of
#   the right index to 5 greater than the left index on each iteration
#   i take the substring, append it to the list as described,
#     then I increment the value of left index by 1 and repeat the process
#     I stop doing this when the right index reaches the end of the input string
#       that is... the value of right index is one less than the input string's size
#
# go through this array of strings
#   convert this numeric string to an integer
#   take this integer and produce its digits
#   go through the digits and multiply all of them;
#     replace the current numeric string with this value
#
# return the largest ( max ) value in the converted array
#
#   0123456
#  '3456366'
#

# input: string
# output: integer
#
# data: list of substrings ( array )

def greatest_product(input)
  substrings = []
  left_index = 0
  right_index = 4
  loop do
    substrings << input[left_index..right_index]
    break if right_index == input.size - 1

    left_index += 1
    right_index += 1
  end
  products = substrings.map do |substring|
    digits = substring.chars.map { |letter| letter.to_i }
    digits.reduce { |result, number| result *= number }
  end
  products.max
end
p greatest_product('123834539327238239583') == 3240
p greatest_product('395831238345393272382') == 3240
p greatest_product('92494737828244222221111111532909999') == 5292
p greatest_product('92494737828244222221111111532909999') == 5292
p greatest_product('02494037820244202221011110532909999') == 0
