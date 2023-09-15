topics covered

# variable shadowing and array iteration
```

name = "Will"
people = ["Alice", "Bob"]

people.each { |name| puts name }

```
# variables as pointers and string interpolation
```
name = "Will"
person = name
puts "My name is #{person}"
```

# use array select method with a block that returns nil

```
all_numbers = [2, 4, 7, 53, 82, 10]

even_numbers = all_numbers.select do |num|
  number.even?
  puts number
end

puts even_numbers

```

# truthiness vs boolean
```
value = "red"

if value == true
  puts "twix"
else
  puts "skittles"
end


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

```

# variable initialization & reassignment
```
name = "Will"
person = name
name = "Bill"

puts name
puts person
```

# operator precedence and short-circuit evaluation
```

hungry = true
bored = nil

puts "Time to eat!" if hungry || bored

daytime = true
sunny = true
mood = tired

puts "Time to swim!" if daytime || sunny && mood != tired

```

# strings methods, mutation or assignment?
```
name = "Will"
nickname = name

puts name + "iam"
puts nickname

puts name += "iam"
puts nickname

puts name << "Seipp"
puts nickname.concat("iam Seipp")

```

# puts and p with arrays

```
numbers = [1, 2, 3]
puts numbers
print numbers
p numbers


```

# numeric operators and operator precedence
```

def convert_to_fahrenheit(fahrenheit)
  fahrenheit * 9 / 5 + 32
end

todays_temp = rand(45)
puts "It is #{convert_to_fahrenheit(todays_temp)} degrees fahrenheit today"

```

# nil values in conditionals
```
name = nil
if name
  puts "name was truthy"
else
  puts "name was falsey"
end
```

# does this string method mutate?
```
def formalize(phrase)
  phrase = phrase.capitalize
  phrase += " to you, good Sir"
end

greeting = "hello"
puts formalize(greeting)
puts greeting

```

# conditionals
```

time_of_day = ["morning", "afternoon", "night"]
current_time = time_of_day.sample

case current_time
when "morning"
  puts "Time for coffee!"
when "afternoon"
  puts "Whelp, time to pick up the kiddos!"
else
  puts "Let's go to sleep ya monkeys!"
end

```
