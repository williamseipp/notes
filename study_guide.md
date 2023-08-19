## TOPICS

{{{ QUESTIONS TO ASK

# am I being too wordy? When is this level of detail appropriate?

puts str
"The value of the variable `str` is passed as an argument to the method `puts`
  and the `hello` is output"

    i = 3 

    loop do 
      puts str 
      i -= 1 
      break if i == 0 
    end

______________________________________________________________________________

# ASK THIS! ASK THIS! ASK THIS! ASK THIS! ASK THIS!
# should I include the explanation of what `s` is assigned to explicitly on
# its own line or is the way the book references this fact enough?

    def fix(value)
    end

    s = "hello"
    t = fix(s)

We start by passing `s` to `fix`; this binds the String represented by
`'hello'` to `value`. In addition, `s` and `value` are now aliases for the
String.

# how would you look back at the book and the course to determine which ideas
# are formal concepts they want you to reference in your answers?

{{{   What level of detail is required for answering questions?

On one hand, the [study_guide](https://launchschool.com/lessons/278c95b6/assignments/37d88bff)
provides this example:
{{{ example with A, B, C, and D answers 

```ruby

greeting = 'Hello'
# The local variable greeting is assigned to the String 'Hello'

loop do         # The do/end that follows the loop method invocation is a block
  greeting = 'Hi' # Greeting is reassigned to 'Hi'
  break
end

puts greeting   # puts is called with the value of the variable greeting passed
                # to it as an argument and since greeting was reassigned to
                # Hi, that is the output
```
The local variable `greeting` is assigned to the String `'Hello'` on line 1.
The `do..end` alongside the loop method invocation on lines 3 to 6 defines a
block, within which `greeting` is reassigned to the String `Hi` on line 4. The
`puts` method is called on line 8 with the value of the variable `greeting`
passed to it as an argument; since `greeting` is now assigned to `'Hi'`, this
is what is output. 

This example demonstrates local variable scoping rules in
Ruby; specifically the fact that a local variable initialized outside of a
block is accessible inside the block.

* local variable `greeting`
* `greeting`
* variable `greeting`
* `greeting`

}}}

}}}

}}}

{{{ PRECISE VOCABULARY

# "conditionals" 
if else

# branch
sequence of code that is executed conditionally

# break if
break statement

# i == 0
expression

______________________________________________________________________________

    loop do
      name = 'will'
      break
    end

    puts name
    
"The local variable `name` is initialized within the block, and so it is not
available in the outer scope."

"The `do/end` following invocation of the `loop` method defines a block
and the local variable `name` is initialized/reassigned within this block"
______________________________________________________________________________


    if name == "will"
      puts "that is my name!"
    end

"When we reference the variable `name` in the conditional"

______________________________________________________________________________
# passing arguments to method calls

    def fix(value)
    end

    s = "hello"
    t = fix(s)

We start by passing `s` to `fix`; this binds the String represented by
`'hello'` to `value`. In addition, `s` and `value` are now aliases for the
String.

______________________________________________________________________________

    def a_method
      puts "hello world"
    end

Describe this method.

BAD: "the results of the method is hello world"
GOOD: "the method invocation outputs the string hello world and returns nil"

______________________________________________________________________________

    greeting = "Hello"

The variable `greeting` is assigned to the String `"Hello"`

______________________________________________________________________________

    a = "Hello"

    if a
      puts "Hello is truthy"
    else
      puts "Hello is falsy"
    end

`a` evalutes as true in the conditional statement so 'Hello is truthy' 
is output

`a` is truthy and so "Hello is truthy" is output

* "evaluates to true"
* "evaluates as true"
* "is truthy"

______________________________________________________________________________

Values or references are passed to methods
Values or references are returned by methods

______________________________________________________________________________

Parameters are the names assigned to a method's arguments
Arguments are the values that get passed to the method

}}}

{{{ HOW TO ANSWER

* Remember to describe how the code works with precision and specific syntax.

* Tie your explanation to the concept being demonstrated

1. RUN the code
2. WRITE down output
3. COMMENT relevant lines in English 
4. ANSWER the question in this order:
    * HOW did input change?
    * WHAT is the result?
    * WHY did this happen?
5. REVIEW your answer


}}}

{{{  HOW NOT TO ANSWER

    def replace(str, value)
      loop do
        break
      end
      str = value
    end

    greet = 'Hey!'
    replace(greet, 'Hello')
    puts greet

What does this code print and why?

# BAD ANSWER: ( None of this information addresses the question of WHY )

* `loop` is a method
* The words `do` and `end` and everything in between them are a block
* `break` causes the loop method to end immediately
* `Hello` and `Hey` are strings.

# GOOD ANSWER:

The code prints `Hey!` because the method `replace` doesn't mutate the first
string passed in as its first argument. On line 5, we reassign the 2nd
argument to the `str` variable. Since reassignment of a variable doesn't
mutate the referenced object, the value that `greet` references remains
`Hey!`.

}}}

{{{ CONCEPTS TO REFERENCE

# variable scope

# variable shadowing

# pass by reference

# mutating?

# truthy

# implicit return

}}}
______________________________________________________________________________

{{{ VARIABLES

# what are variables?
variables store information to be referenced and manipulated

# local variable & constant names
    first_name
    DATE_OF_BIRTH

# initialization & reassignment
    first_name = "William"
    first_name = "Will"

# global variables
    $var = "you can reference me at any point in the program"

# variable scope & method definitions 
A variable's scope determines where in a program its available for use.
Inside of a method, you can only reference those variables that have been
initialized within the method have self-contained scope ( like a bubble )

# variable scope & blocks
A block creates its own "inner scope"
Within that inner scope, you can access variables initialized in an outer
scope, but the outer scope cannot reference variables initialized in the block

    a = 5
    3.times do |n|
      a += 1
      b = 2
    end

    puts a     # => 8
    puts b     # => NameError: the outer scope cannot reference a variable
                               defined in the inner scope of the block

# variables as pointers

    a = 4
    b = a
    a = 7
    b is 4

variables point to values in memory. `b = a` means that `b` references the
object that `a` references, which is `4`. Reassigning `a` to `7` does not
change the fact that `b` is assigned to `4`

# variable shadowing

when you try to reference a local variable from within a block that has the
same name as a block parameter, you cannot reference it

    name = 'will'
      loop do |name|
      puts name
    end


}}}

{{{ OPERATORS

The expressions or values that an *operator* uses are *operands*

# numeric             **  *   /   %   +   -   divmod

    a ** b
    a * b
    a / b
    a % b               modulo: pos/neg depends on b
    a.remainder b       remainder: pos/neg depends on a
    a.divmod b          divmod: [quotient, remainder]
    a + b
    a - b

# conditional         ==  !=  <   >   <=  >=  ? :

    ==                  equality
    !=                  not equal
    <, >, <=, >=, <=>   greater/less than

# assignment          +=  -=  *=

    =
    +=              left operand gets result
    -=
    *=
    /=      
    %=
    **=

# parallel assignment
    a, b, c = 10, 20, 30

# logical             !   &&  ||

    &&              TRUE && TRUE
    ||              TRUE OR FALSE
    !               NOT
    !!              turns values into their boolean equivalent

# short-circuit evaluation
the && and || operators use short-circuit evaluation
the return value is always the value of the operand evaluated last

they can work with truthy values and return truthy values too!

    3 || 'foo'      # => 3
    3 && 'foo'      # => 'foo'
    nil || 'foo'    # => 'foo'
    'foo' && nil    # => nil

you can coerce truthy values into booleans when you need it:

    boolean_value = !!('foo' || nil)


# string

#       +   concatenation: 
    `first_name + ' Seipp`

#       *   returns a new String containing integer copies of itself 
    `'hello' *3`  


{{{ precedence table

Operators with highest precedence will get evaluated before those with 
lower and bind those operands. Good examples:
    
    ( 'foo' && 'bar' ) || 'baz'
    ( 3 * 2 ) + 7
    

```ruby
!, ~, unary +
**
unary -
*, /, %
+, -
<<, >>
&
|, ^
>, >=, <, <=
<=>, ==, ===, !=, =~, !~
&&
||
.., ...
?, :
modifier-rescue
=, +=, -=, etc.
defined?
not
or, and
modifier-if, modifier-unless, modifier-while, modifier-until
{ } blocks
```

}}}

}}}

{{{ METHODS

A method is a way to perform actions repeatedly and extract this to one place

# puts
returns nil

# definitions
    def say(words)
      #do something with words
    end

`words` is a parameter; it is used to access data outside of the method's
scope within the method definition.
______________________________________________________________________________

# invocation     ( calling a method )

arguments are "passed" to a method invocation

    say('hello')

When we call `say("hello")`, we pass in the string "hello" as the argument
in place for the `words` parameter
______________________________________________________________________________

# default parameters

    def greeting(words="hello")
      puts words + "!"
    end

    greeting
    # => "hello."

______________________________________________________________________________

# implicit and explicit return values

Ruby methods always return the evaluated result of the last line of the
expression unless an explicit return comes before it like so:

    def some_method
      return "hi"
      puts "hello"
    end
______________________________________________________________________________
# output vs return values
many methods have only return values. Examples include

    String#sub
    Integer#to_s

some methods perform an action AND have a return value. Methods like

    Kernel#puts     displays string output and returns nil
    String#gsub!    mutates the caller and returns self

There is a distinction
______________________________________________________________________________

# side effects
______________________________________________________________________________
# pass-by-reference vs pass-by-value
    watch the videos / articles and condense the information into takeaways
    AND record the formal concept that will asked be for on the assessment

______________________________________________________________________________
# call stack

Keeps track of 
* what method is executing
* where does execution resume after method returns

The call stack
* puts information about the current method on top
* removes that information when the method returns
    
The call stack is used by
* methods
* blocks
* procs
* lambdas

# example

    1  def first
    2    puts "first method"
    3  end
    4
    5  def second
    6    first 
    7    puts "second method"
    8  end
    9
    10 second

**Call Stack**          name of the method that was executing, placeholder
    puts
    first: line 2
    second: line 6
    main: line 10

}}}

{{{ EXPRESSIONS and RETURN

the return keyword explicitly returns a value within a method

    def some_method
      return 42
    end

}}}

{{{ BOOLEANS vs TRUTHINESS

# what is nil?

There is only one `nil` object. It's object_id is `4`

when used in an expression, nil will be **treated** as false and the following
branch will not be executed

    if nil
      puts "I encountered a nil"
    end

# booleans

There is only one `true`, and only one `false`

# truthiness
all objects other than `false` and `nil` will evaluate to `true` in an
expression

    if name
      puts 'name was truthy'
    else
      puts 'name was falsey'
    end

}}}

{{{ CONDITONALS

for

unless

case statements


}}}

{{{ LOOPS

while
do/while
until

}}}

{{{ MUTABILITY

# mutability 
# immutability
# constants

}}}
______________________________________________________________________________

{{{ NUMBERS

# integers

# floats

# times

# to_s

# to_i

# to_f


}}}

{{{ STRINGS

# string interpolation

    last_name = 'Seipp'
    puts "Name's #{last_name}, Wiliam #{last_name}}"

# + 
returns a new String containing other_string concatenated to self

    `'hello' + ' world'`


# * 
returns a new String containing multiple copies of self 

    `puts "#{last_name*3}" => 'SeippSeippSeipp'`

# << 
concatenates object to self and returns self

    first_name << last_name

# chomp 
returns a new string copied from self with trailing characters removed

    first_name.chomp

# delete 
returns a new string copied from self without arguments

    fruit = "apples, bananas, coconuts, oranges, pineapples"
    fruit.delete('o')
    fruit # => "apples, bananas, ccnuts, ranges, pineapples"

# sub 
returns a copy of self with the first occurence of the given pattern replaced

    pets = 'cat cat dog'
    pets.sub('cat', 'fish')
    'fish cat dog'


# gsub
returns a copy of self with all occurence of the given pattern replaced

    pets = 'cat cat dog'
    pets.sub('cat', 'fish')
    # =>'fish fish dog'

# downcase
returns a new string with all the lowercase characters in self

    name = 'William'
    name.downcase 
    # => 'william'

# upcase
returns a new string with all the uppercase characters in self

    name = 'William'
    name.downcase 
    # => 'WILLIAM'

# eql?
returns true if the object has the same length and content

    name = 'William'
    name.eql?('William')
    # => true

# include?

returns true if self contains other_string

    pets = 'cat cat dog'
    pets.include?('dog')
    # => true

# length
returns the number of characters in self. Alias for #size

    name = 'Will'
    name.length
    # => 4

# to_i

returns the result of interpreting leading characters in self as as an integer

    name = '23will'
    name.to_i
    # => 23





}}}

{{{ ARRAYS

# syntax

# properties

# methods

}}}

{{{ HASHES

hash syntax

hash methods used in book

}}}

{{{ TYPE CONVERSION

# to_s
    [1, 2, 3].to_s
    # => "[1, 2, 3]"

# to_i          interprets leading characters
    '4 score'.to_i
    # => 4

# to_f          interprets leading characters
    'a5'.to_f
    # => 0

# to_a          method doesnt exist for numbers and strings!
    { name: "Will", age: 37 }.to_a
    # => [[:name, "Will"],[:age, 37]]

# to_h     must provide a block or an array of 2-element sub-arrays
    [[0, "alice"], [1, "bob"]].to_h
    # => { 0 => "alice", 1 => "bob" }

}}}
______________________________________________________________________________

{{{ PRACTICE w/ EXAMPLES
```ruby
def fix(value)
  value.upcase!
  value.concat('!')
  value
end

s = 'hello'
t = fix(s)
```

What does this do and why?

On line 7, the local variable `s` is assigned the String `'hello'`
This value gets passed to `fix` on line 8, and the method parameter
`value` is bound to the String `'hello'`. This String then calls the `#upcase!`
method on itself on line 2, changing itself to `HELLO`. On line 3, the same
String calls the `#concat` method on itself with the String `'!'` as an 
argument, changing itself to `'HELLO!'`. On line 4, the reference to this
String is returned by the method, which then gets assigned to the local 
variable `t`. As a result, both `s` and `t` reference the same String `HELLO!`

This example demonstrates the concept of pass-by-reference

{{{   **book answer**
We start by passing `s` to `fix`; this binds the String represented by
`'hello'` to `value`. In addition, `s` and `value` are now aliases for the
String.

Next, we call `#upcase!` which converts the String to uppercase. A new String
is not created; the String that is referenced by both `s` and `value` now
contains the value `'HELLO'`

We then call `#concat` on `value`, which also mutates `value` instead of
creating a new String; the String now has a value of `"HELLO!"`, and both `s`
and `value` reference that object.

Finally, we return a reference to the String and store it in `t`

The only place we create a new String in this code is when we assign `hello`
to `s`. The rest of the time, we operate directly on the object, mutating it
as needed. Thus, both `s` and `t` reference the same `String`, and that
`String` has the value `'HELLO!'`

}}}

}}}

______________________________________________________________________________

______________________________________________________________________________

______________________________________________________________________________

