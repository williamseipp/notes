# A pangram is a sentence that contains every single letter
# of the alphabet at least once. For example, the sentence
# "The quick brown fox jumps over the lazy dog" is a
# pangram, because it uses the letters A-Z at least once
# (case is irrelevant).

#   Given a string, detect whether or not it is a pangram.
# Return True if it is, False if not. Ignore numbers and
# punctuation.

describe "Pangram" do
  it "Check if string is a Pangram" do
    # "The quick brown fox jumps over the lazy dog."
    expect(pangram?("The quick brown fox jumps over the lazy dog.")).to eq(true)
    # "This is not a pangram."
    expect(pangram?("This is not a pangram.")).to eq(false)
  end
end
