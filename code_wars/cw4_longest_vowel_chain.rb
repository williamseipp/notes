# The vowel substrings in the word codewarriors are
# o,e,a,io. The longest of these has a length of 2. Given a
#   lowercase string that has alphabetic characters only
#   (both vowels and consonants) and no spaces, return the
# length of the longest vowel substring. Vowels are any of
# aeiou.

# input: string
# output: integer
#
# go through input string
#   define some vowels to compare letters against ['a','e','i','o','u']
#   define some variable vowel_combo as an empty string
#   define some array combos as an empty array
#
#   if the current letter is a vowel, add this letter to the vowel_combo
#   if not, add the current vowel_combo to the list if the length is greater than 0
#     and reset the vowel_combo to an empty string
#
# go through the array of consecutive vowels and return the size of the biggest
# iterate through combos
# define some variable current_max_combo_size to 0
#   if the size of the current combo is bigger than current_max_combo_size
#     current_max_combo_size IS size of current combo
#
#
# return current_max_combo_size
#

def solve(word)
  vowels = %w[a e i o u]
  vowel_combo = ''
  combos = []

  word.each_char do |letter|
    if vowels.include?(letter)
      vowel_combo << letter
    elsif vowels.include?(letter) == false
      if vowel_combo.size >= 1
        combos << vowel_combo
        vowel_combo = ''
      end
    end
  end

  combos << vowel_combo if vowel_combo.size >= 1

  current_max_combo_size = 0
  combos.each do |combo|
    current_max_combo_size = combo.size if combo.size > current_max_combo_size
  end

  current_max_combo_size
end
p solve('codewarriors') == 2
p solve('suoidea') == 3
p solve('iuuvgheaae') == 4
p solve('ultrarevolutionariees') == 3
p solve('strengthlessnesses') == 1
p solve('cuboideonavicuare') == 2
p solve('chrononhotonthuooaos') == 5
p solve('iiihoovaeaaaoougjyaw') == 8
