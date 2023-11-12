# In this kata, you've to count lowercase letters in a given string and return
#   the letter count in a hash with 'letter' as key and count as 'value'. The key
#   must be 'symbol' instead of string in Ruby and 'char' instead of string in
#   Crystal. 

describe("Basic Test") do
  Test.assert_equals(letter_count('codewars'), {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1})
  Test.assert_equals(letter_count('activity'), {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1})
  Test.assert_equals(letter_count('arithmetics'), {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2})
end
