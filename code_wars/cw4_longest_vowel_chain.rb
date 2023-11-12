# The vowel substrings in the word codewarriors are
# o,e,a,io. The longest of these has a length of 2. Given a
#   lowercase string that has alphabetic characters only
#   (both vowels and consonants) and no spaces, return the
# length of the longest vowel substring. Vowels are any of
# aeiou. 

describe "Longest vowel chain" do
  it "Basic tests" do
    Test.assert_equals(solve("codewarriors"),2)
    Test.assert_equals(solve("suoidea"),3)
    Test.assert_equals(solve("iuuvgheaae"),4)
    Test.assert_equals(solve("ultrarevolutionariees"),3)
    Test.assert_equals(solve("strengthlessnesses"),1)
    Test.assert_equals(solve("cuboideonavicuare"),2)
    Test.assert_equals(solve("chrononhotonthuooaos"),5)
    Test.assert_equals(solve("iiihoovaeaaaoougjyaw"),8)
  end
end
