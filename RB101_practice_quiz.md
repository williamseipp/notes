topics covered

# variable shadowing and array iteration
```

name = "Will"
people = ["Alice", "Bob"]

people.each { |name| puts name }
# ask what output is and why, and what concept is being demonstrated

```
# variables as pointers and string interpolation
```
name = "Will"
person = name
puts "My name is #{person}"
# ask what output is and why, and what concept is being demonstrated
```

# use array select method with a block that returns nil

```
all_numbers = [2, 4, 7, 53, 82, 10]

even_numbers = all_numbers.select do |num|
  number.even?
  puts number
end

puts even_numbers

# ask what output is and why, and what concept is being demonstrated
```

# truthiness vs boolean
```
value = "red"

if value == true
  puts "twix"
else
  puts "skittles"
end

# ask what output is and why, and what concept is being demonstrated

```
# variable scopes in blocks
```

name = "Will"

loop do
  first_name = name
  puts first_name
  break
end

puts first_name

# ask what output is and why, and what concept is being demonstrated
```
# method parameters vs arguments
```
def tricky_method(param)
  param = param += " world!"
  param.upcase!
end

greeting = "hello"
phrase = tricky_method(greeting)

puts greeting
puts phrase

# ask what output is and why, and what concept is being demonstrated
```

# pass by reference or pass by value?
```

# how do we trick the user in thinking an immutable object has been mutated
#   when no method exists for this? Do I use the `+=` operator and hope
#   the user thinks this mutates Integers in the same way the String method
#   `+=` mutates Strings?

def sausage_factory(chicken, pork)
  
end
# create a method that takes two arguments
# pass a mutable object for the first argument, and then an immutable one
# examine the objects with calls to puts
# ask what output is and why, and what concept is being demonstrated
```

# variable initialization & reassignment
```
# create some variable and assign it some String
name = "Will"
person = name
name = "Bill"

puts name
puts person
# ask what output is wand why, and wht concept is being demonstrated
```

# operator precedence and short-circuit evaluation
```

# define some function that returns an expression
# this expression consists of && and != operators and returns a truthy value
# output some message based upon the truthiness of this value
# ask what output is and why, and what concept is being demonstrated
```

# strings and string type conversion
```

# define some String
# convert it to an Integer
# convert it to an array
# ask what output is and why, and what concept is being demonstrated
```

# puts and p with arrays

```
numbers = [1, 2, 3]
puts numbers
print numbers
p numbers

# ask what output is and why, and what concept is being demonstrated

```

# numeric operators and operator precedence
```

def convert_to_fahrenheit(fahrenheit)
  fahrenheit * 9 / 5 + 32
end

todays_temp = rand(45)
puts "It is #{convert_to_fahrenheit(todays_temp)} degrees fahrenheit today"

# ask what output is and why, and what concept is being demonstrated
```

# nil values in conditionals
```
name = nil
if name
  puts "name was truthy"
else
  puts "name was falsey"
end
# ask what output is and why, and what concept is being demonstrated
```

# does this string method mutate?
```
def formalize(phrase)
  phrase = phrase.capitalize
  phrase += " to you, good Sir"
end

greeting = "hello"
puts greeting

# ask what output is and why, and what concept is being demonstrated
```

# mutating arguments in a method
```
```

