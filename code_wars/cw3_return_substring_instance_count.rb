# Complete the solution so that it returns the number of
# times the search_text is found within the full_text.
#   Overlap is not permitted : "aaa" contains 1 instance of
# "aa", not 2.

Test.assert_equals(solution('abcdeb','b'), 2);
Test.assert_equals(solution('abcdeb', 'a'), 1);
Test.assert_equals(solution('abbc', 'bb'), 1);

