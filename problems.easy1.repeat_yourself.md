# Write a method that takes two arguments, a string and a positive integer,
# and prints the string as many times as the integer indicates.

# example
```ruby

repeat('Hello', 3)

# Hello
# Hello
# Hello

```

```ruby

def repeat(word, number)
  number.times do
    puts word
  end
end
```

I could only think "isnt times the easy way of repeating a loop a specific
                    number of times?"

I wasn't sure of the syntax, but I knew that a block argument wasnt part
of it.

**my guess worked**
