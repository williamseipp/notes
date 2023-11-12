# Given a string of integers, return the number of
# odd-numbered substrings that can be formed.

#   For example, in the case of "1341", they are 1, 1, 3,
# 13, 41, 341, 1341, a total of 7 numbers.

#   solve("1341") = 7.

describe "Non-even substrings" do
  it "Basic tests" do
    Test.assert_equals(solve("1341"),7)
    Test.assert_equals(solve("1357"),10)
    Test.assert_equals(solve("13471"),12)
    Test.assert_equals(solve("134721"),13)
    Test.assert_equals(solve("1347231"),20)
    Test.assert_equals(solve("13472315"),28)
  end
end
