# If we list all the natural numbers below 10 that are multiples of 3 or 5, we
# get 3, 5, 6 and 9. The sum of these multiples is 23.
#   Finish the solution so that it returns the sum of all the multiples of 3 or 5
# below the number passed in.
#   Additionally, if the number is negative, return 0.
#   Note: If the number is a multiple of both 3 and 5, only count it once.

# puts [3, 5, 6, 9, 10, 12, 15, 18].sum

# for the set of all numbers from 0 to input - 1
# create the set of those numbers that are multiples of either 3 or 5
# then, return the sum of this set

def test(input)
  # iterate through all numbers from 0 to input -1
  # if the current number is a multiple of 3 andor 5, add it to the list
  #   a number is a multiple of 3 or 5 if it can be divided by 3 or 5 and
  #     a remainder of 0
  # define some array called "multiples_of_3_andor_5"

  return 0 if input <= 0

  multiples = (0..input - 1).select do |number|
    number % 3 == 0 || number % 5 == 0
  end

  multiples.sum
end
p test(10) == 23
p test(20) == 78
p test(200) == 9168
p test(-200) == 0
p test(0) == 0
