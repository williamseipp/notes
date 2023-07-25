### Preparations

Being social has many benefits, so get started early. Ask specific questions
after trying it out yourself and documenting your work. Also, commit often.

### solving problems

* read [small problems primer](https://launchschool.com/gists/2a3a3d72)
* do [RB101-RB119-Small Problems](https://launchschool.com/exercises#rb101rb119_small_problems)
 * easy: for 109 assessments, grok syntax, conditionals, loops, fundamental data types, common methods
 * medium: for 119 interview assessment, read the docs often and do independent research
 * hard: to gain mastery compare your answers, revisit difficult questions, challenge yourself

### Quiz1

**lesson learned: test your hypothesis**

I was told to select all methods that returned an array of integers
with values that correspond to lengths of the words in the corresponding
sentence. I didn't confirm the return value of the call to `each`.

```ruby
def string_lengths(sentence)
  strings = sentence.split
  lengths = []

  strings.each do |string|      # each returns a new array, not lengths
    lengths << string.size
  end
end
```
