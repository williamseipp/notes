# For a given nonempty string s find a minimum substring t
# and the maximum number k, such that the entire string s is
# equal to t repeated k times.

#   The input string consists of lowercase latin letters.


Test.assert_equals(f("ababab"), ["ab", 3])
Test.assert_equals(f("abcde"), ["abcde", 1])
