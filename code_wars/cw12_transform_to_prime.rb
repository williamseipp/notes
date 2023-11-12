# Given a List [] of n integers , find minimum number to be inserted in a list,
# so that sum of all elements of list should equal the closest prime number .
# Notes

# List size is at least 2 .

# List's numbers will only positives (n > 0) .

# Repetition of numbers in the list could occur .

# The newer list's sum should equal the closest prime number . 

describe "Basic tests" do
  Test.assert_equals(minimum_number([3,1,2]),1)
  Test.assert_equals(minimum_number([5,2]),0)
  Test.assert_equals(minimum_number([1,1,1]),0)
  Test.assert_equals(minimum_number([2,12,8,4,6]),5)
  Test.assert_equals(minimum_number([50,39,49,6,17,28]),2)
end
