# You are given array of integers, your task will be to
# count all pairs in that array and return their count.

#     Array can be empty or contain only one value; in this
# case return 0
#
#    If there are more pairs of a certain number,
#   count each pair only once. E.g.: for [0, 0, 0, 0] the
#     return value is 2 (= 2 pairs of 0s) Random tests:
#       maximum array length is 1000, range of values in
#         array is between 0 and 1000

# write a method that takes an array, with 0 integers or several
#   create a variable "number_of_pairs" used for holding the value of pairs
#
#
#   do I iterate through the array sequentially or perform some other operation?
#
#
# approach_1: iterate through the array of integers and fill in a hash, where
#             the key/value pair is  the number, and the number of occurences
#
#   number_of_pairs should be created
# iterate through the array of integers
#   if the integer does not already exist in the hash
#     create a k/v pair for that integer and set the value (count) to 1
#   if it does exist
#     increase the value of the count by 1
#
#  go through the hash and examine only the values ( array of values)
#  and use this to increase the number of pairs ( what do you mean?)
#   iterate through the values
#     divide each values by 2 and add this result to number_of_pairs
#
#

# might want to use reduce? b/c return value is a single integer
def pairs(numbers)
  number_of_pairs = 0
  pair_count = {}

  numbers.each do |number|
    if pair_count[number].nil?
      pair_count[number] = 1
    else
      pair_count[number] += 1
    end
  end
  values = pair_count.values
  values.each do |value|
    count = value / 2
    number_of_pairs += count
  end

  number_of_pairs
end

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0
