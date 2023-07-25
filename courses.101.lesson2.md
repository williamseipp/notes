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

Sometimes you remember better when you make mistakes and have to pya
for them.

** Writing methods **

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

