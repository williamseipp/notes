{{{ LESSON 1
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
}}}

{{{   LESSON 2
### TOC
### Small Programs
### Walk-through: calculator
### Pseudo-code and flowchart
### ruby version manager: manage your ruby environment
### rubocop: static code analyzer
### walk-through: refactoring calculator
### debugging: follow protocol and use good techniques
### precedence is complicated: just use parentheses!
### Assignment: calculator bonus features
### Assignment: mortgage / car loan calculator
### Coding tips
### Variable scope 
### MORE VARIABLE SCOPE
### Pass by reference vs pass by value
### walk-through: rock paper scissors
### rubocop rock paper scissors
### coding tips 2
### Assignment: RPS Bonus Features
### Summary
### RB101: Lesson 2 Quiz





### Small Programs

In this lesson, you write small programs that get harder. 
Think about a program's logic and how to debug.

### Walk-through: calculator
The command line calculator should do the following:

* asks for two numbers
* asks for the type of operation to perform: add,subtract,multiply or divide
* displays the result
* uses Kernel.gets() and Kernel.puts()

### Pseudo-code and flowchart
pseudo-code and flowcharts allow you to focus on the logic of a problem


**concept** "declarative": describe what the result should be
**concept** "imperative": specify how to obtain result

Start with a high-level declarative syntax and use imperative for specific
implementation details

Here are some keywords, their meaning, and the corresponding flowchart symbol
START:      start of program                    ellipse: start/stop
SET:        sets a variable                     square: processing step
GET:        retrieve input from user            parallelogram: input/output
PRINT:      displays output to user             ??
READ:       retrieve value from variable        square: processing step
IF/ELSE IF  show conditional branches in logic  diamond: decision
WHILE       show looping logic                  connector+arrows
END         end of the program                  ellipse: start/stop

### ruby version manager: manage your ruby environment

I chose rbenv earlier because I read that rbenv is simpler

### rubocop: static code analyzer

static code analyzer that offers advice about style format and logical errors
use a .rubocop.yml file to configure which rules rubocop should use

### walk-through: refactoring calculator

implement the following:
* looping behavior
* input validation
* refactor of prompts
* better readability

### debugging: follow protocol and use good techniques

temperment: learn to deal with frustration, then systematically search
reading error messages: embrace reading stack traces; you'll improve
online resources: google, stack overflow, documentation

**steps**
 1. Reproduce the Error:
 2. Determine boundaries: try different inputs to find scope of the error
 3. Trace the code: look at execution backwards and "trap" the error
 4. Understand the problem well: examine in depth how the error occurs
 5. Fix: one problem at a time
 6. Test: does this fix work for all inputs?

**techniques**
 1. line by line: inspect code with an attention to detail
 2. rubber duck: talk it out to something and you'll uncover errors
 3. walking away: take a break and let the problem simmer in your brain
 4. pry: insert breakpoint with "binding.pry" and examine variables
 5. using a debugger: pry can be used in this way

### precedence is complicated: just use parentheses!

example 1: 

```ruby
    > 3 + 5 * 7
```

the * operator has higher precedence than the +, so 
5 and 7 get passed to * as operands. * **binds** more
tightly to 5 than +

example 2:

```ruby
    array.map do |num|
      num + 1
    end
    # outputs [2, 3, 4]

    p array.map do |num|
      num + 1
    end
    # outputs #<Enumerator: [1, 2, 3]:map>

```

Why is it printing an enumerator when we expect an array?
because `do...end` blocks have the lowest precedence, 
`p` and `array.map` are tighter than `map do`. It's as if
this was written: `p(array.map)`

**Ruby's tap method**

Object#tap allows passing of self into a block in order to debug
intermediate objects in method chains like so...

```ruby
    (1..3).tap { |x| p x }.to_a        # 1..3 is shown
                                        # => [1, 2, 3]
```

similar to pry, it allows you to verify that the object you're
referring to in a method chain is what you think it is

### Assignment: calculator bonus features
### Assignment: mortgage / car loan calculator
### Coding tips

**Feel the burn**

Experience is the best teacher, and painful experiences stand out!



**Writing methods**

methods should be short and have limited responsibility.
methods should either:
 * display output
 * return a **meaningful** value


**side effects**
methods should either have no return value and have a side effect OR
return a value with no side effects.

```ruby
def total(cards) # [1, 2, 3]
end

def update_total(total, cards)
end 
# total is changed
```

**same level of abstraction**

* deal(), hit(), stay() are all poker verbs.
* iterate_through_cards() isnt poker lingo and its imperative;
  choose something else for a name.

**name methods the way you want to use them**

```ruby
ace = find_ace(cards)
ace = find_ace_from_cards(cards)
```

Choose the first example.

### Variable scope 

understanding variable scope in blocks versus method definitions is
simple.

1. Inner can access outer: Method definitions access variables in 
    an outer scope by passing them in as arguments. 
    Blocks don't need to do this.

```ruby
morning_greeting = "mornin'"

def greet(phrase)
  puts "#{phrase}!"
end

1.times do
  puts "#{morning_greeting}"
end
```

2. Outer cannot access inner: Variables created inside blocks or 
    method definitions cannot be used outside of the inner scope. 

```ruby
loop do
  a = 1
  break
  end
puts a  # undefined error
```

3. Variable shadowing: When a block parameter and an outer variable
    have the same name, the block parameter will always be used.

```ruby
n = 10

[1, 2, 3].each do |n|
  puts n
end
# 1 2 3
```

4. Some other things to remember:

* a block can access AND change outer scope variables
* nested blocks have nested scopes
* a block within a method definition retains block scoping rules
* constants can be referenced from anywhere:

```ruby

# method definition using outer without passing as argument
USERNAME = 'Batman'

def authenticate
  puts "Logging in #{USERNAME}"
end

authenticate    # => Logging in Batman

# block using outer 
1.times do
  puts "I love #{USERNAME}!"  # => I love Batman!
end

# outer accessing inner!
loop do
  MY_TEAM = "Phoenix Suns"
  break
end

puts MY_TEAM    # => Phoenix Suns

```

### MORE VARIABLE SCOPE

You cannot have a block without a method.
Blocks are arguments to methods.

The level of interaction between a method and a block is set by the
method definition

Method invocations can interact with their surroundings with more flexibility
when used with a block **because a return inside a block does so from the
enclosing scope**

```ruby
a = "hello"

[1, 2, 3].map { |num| a }
```

* map calls the block
* the block returns a value of 'a'
* map uses 'a' to transform the array element

**method definition**
* sets a scope for local variables in terms of parameters

**method invocation**
* uses the scope set by the method definition

### Pass by reference vs pass by value
### walk-through: rock paper scissors
### rubocop rock paper scissors

### coding tips 2

* use new lines to organize code

```ruby
name = ''

puts "Enter your name: "
loop do
  name = gets.chomp
  break unless name.empty?
  puts "That's an invalid name. Try again:"
end

puts "Welcome #{name}!"
puts "What would you like to do?"
```


* understand if a method returns a value, has side effects, or does both

```ruby
# side effect: displays something to the output
# returns: nil

def total(num1, num2)
  puts num1 + num2
end

# side effect: mutates the passed-in array
# returns: updated array

def append(target_array, value_to_append)
  target_array << value_to_append
end
```


* name methods appropriately

print_total should not return anything


* dont mutate the caller during iteration
```ruby

# this is ok
words = %w(scooby doo on channel two)
words.each {|str| str << '!'}
puts words.inspect        # => ["scooby!", "doo!", "on!", "channel!", "two!"]

# this is not ok
words = %w(scooby doo on channel two)
words.each {|str| words.delete(str)}
puts words.inspect        # => ["doo", "channel"]
```


* variable shadowing

choose appropriate block parameters

```ruby
name = 'johnson'

['kim', 'joe', 'sam'].each do |name|
  # uh-oh, we cannot access the outer scoped "name"!
  puts "#{name} #{name}"
end
```


* dont use assignment in a conditional

```ruby
# bad

if some_variable = get_a_value_from_somewhere
  puts some_variable
end

# good

some_variable = get_a_value_from_somewhere
if some_variable
  puts some_variable
end
```

even this is confusing...

```ruby
numbers = [1, 2, 3, 4, 5]

while num = numbers.shift       # while (num = numbers.shift)
  puts num
end
```


* Experience comes from not doing best practices; dont fixate on them

Being a good developer comes from experience, not searching for a list


### Assignment: RPS Bonus Features
### Summary
### RB101: Lesson 2 Quiz

}}}

{{{ LESSON 3
## Question1: mutation
## Question2: explain difference between ! and ? 
## Question3: mutation
## Question4: array methods
## Question5: query a range
## Question6: string concatenation
## Question7: array 
## Question8: return a specific Array from a Hash


## Question1

What would you expect the code below to print out?

```ruby
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
```

{{{ answer
**my answer**

    1
    2
    2
    3

numbers has not been mutated because Array#uniq does NOT mutate the caller
}}}

## Question2
Describe the difference between ! and ? in Ruby. 
And explain what would happen in the following scenarios:

1. what is != and where should you use it?
2. put ! before something, like !user_name
3. put ! after something, like words.uniq!
4. put ? before something
5. put ? after something
6. put !! before something, like !!user_name

{{{

**my answer**

1. This is the comparison operator "not equals" and will evaluate
    to true if the operands are not the same, and false if they are

2. This is the NOT operator and will flip the state of the operand. 
    As anything that isnt `nil` or `false` will evaluate to `true`,
    placing a ! in front of it will cause the expression to evaluate
    to `false`

3. This is a naming convention for methods that mutate their caller.

4. This is a naming convention for methods that return a boolean value

5. It won't do anything by itself; the `?` begins a ternary operator
    in Ruby which technically is `?:`

6. This is two logical NOT operators. It will return the state of the
    operand, so in the case of `user_name`, it will return `true` if
    `user_name` isnt a `nil` or `false`
}}}

## Question3

Replace the word "important" with "urgent" in this string:
```ruby
advice = "Few things in life are as important 
as house training your pet dinosaur."
```
{{{
**my answer**

```ruby
advice.sub!('important','urgent')
```

**methods have subtle differences**
String#sub! replaces the first occurence of the matched word
String#gsub! replaces all occurences of the matched word.
}}}

## Question4
The Ruby Array class has several methods for removing items from the array. 
Two of them have very similar names. Let's see how they differ:

```ruby
numbers = [1, 2, 3, 4, 5]
```

What do the following method calls do (assume we reset numbers to the 
original array between method calls)?

```ruby
numbers.delete_at(1)
numbers.delete(1)

```

{{{  **my answer**

delete_at() removes element at specified index from Array and returns it
delete() deletes elements with specified value from Array and returns the
    last element removed

**note**

both of these methods return the removed element
}}}

## Question5

Programmatically determine if 42 lies between 10 and 100.

hint: Use Ruby's range object in your solution.


{{{
**my answer**

```ruby
set = 10..100
set.include?(42)
```
}}}
## Question6

Starting with the string:

```ruby
famous_words = "seven years ago..."
```

show two different ways to put the expected "Four score and" in front of it

{{{
**my answer**

```ruby
"Four score and" + famous_words
"Four score and" << famous_words
```
}}}

## Question7
If we build an array like this:

```ruby
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
```

We will end up with this "nested" array:

```ruby
["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
```

Make this into an un-nested array.


{{{
**my answer**

flintstones.flatten!
}}}
## Question8

Given the hash below

```ruby
flintstones = { "Fred" => 0, 
                "Wilma" => 1, 
                "Barney" => 2, 
                "Betty" => 3, 
                "BamBam" => 4, 
                "Pebbles" => 5 }
```

Create an array containing only two elements: Barney's name and Barney's number

{{{
**my answer**

just_barney = flintstones.slice("Barney").to_a.flatten

I tried looking for an array method but I couldn't find a method that returned
both the value AND the key. I figured then that a method probably existed of
the Hash class that returned a key,value pair that could then be then used to 
call a `to_a` method.

Turns out the method is `slice` and `to_a` returns an array as
needed (non-destructive). 
}}}
**note**
turns out the method exists already, called `Hash#assoc`
}}}

