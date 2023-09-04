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
# use truthy values in a conditional
# compare truthy value to boolean value in same conditional
# ask what output is and why, and what concept is being demonstrated

```
# variable scopes in blocks
```
# initialize a variable to some String
# create simple loop that executes once
# within loop, pass value of variable to puts method
# within loop, initialize some variable
# attempt to pass value of variable in inner scope to puts method invocation
# ask what output is and why, and what concept is being demonstrated
```
# method parameters vs arguments
```
# create some variable
# define a method that reassigns method parameter to a copy of argument
# mutate copy of argument and return it; save it in a new variable
# output the value of both variables with puts
# ask what output is and why, and what concept is being demonstrated
```

# pass by reference or pass by value?
```

# create a method definition that attempts to mutate its argument
# pass it an immutable value and output it with puts
# pass the method a mutable value and output it with puts
# ask what output is and why, and what concept is being demonstrated
```

# variable initialization & reassignment
```
# create some variable and assign it some String
# create another variable and assign it to the same String
# reassign the first variable to another String
# output the value of both variables by passing them to puts
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

# define some array of numbers
# pass the array as an argument to puts, print, and p
# ask what output is and why, and what concept is being demonstrated

```

# numeric operators and operator precedence
```

# initialize a variable with the value of some busy numeric expression
# pass this value as an argument to puts
# ask what output is and why, and what concept is being demonstrated
```

# nil values in conditionals
```
# initialize a variable as nil
# output some message based on the value of the variable
# ask what output is and why, and what concept is being demonstrated
```

# does this string method mutate?
```
# initialize a variable and assign it to some String object
# define some method and pass it the String object as an argument
# perform several String methods with calls to puts in between them
# ask what output is and why, and what concept is being demonstrated
```

# mutating arguments in a method
```
```

