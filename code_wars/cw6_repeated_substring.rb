# find all the substrings of input string
#   * create a substring of input starting at 0 and of length 'n'
#   * if the size of the string can be divided by substring length (n) w/o remainder
#   * take the result of this division (times) and concatenate togther substring
#     'times' number of times
#   * if this resulting string is identical to the input, return substring and 'times'
#       in an array
#   * if it isnt, then increment 'n' by 1 and try all over again
#
#   * if n is equal to the length of input string, return input string and 1 in array

def smallest_substring(input)
  length = 1
  loop do
    return [input, 1] if length == input.length

    if input.length % length == 0
      combined_string = ''
      times = input.length / length
      substring = input.slice(0, length)
      times.times { combined_string.concat(substring) }

      return [substring, times] if combined_string == input
    end

    length += 1
  end
end
p smallest_substring('aaaaa') == ['a', 5]
p smallest_substring('ababab') == ['ab', 3]
p smallest_substring('abcde') == ['abcde', 1]
