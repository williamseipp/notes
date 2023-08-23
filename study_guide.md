# VARIABLES
# OPERATORS
# METHODS
# NUMBERS
# STRINGS
# ARRAYS
# HASHES
# LOOPS
# TYPE CONVERSION
# RANDOM



{{{  QUESTIONS TO ASK YUJ

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
{{{  ANSWERING PROCEDURE

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
______________________________________________________________________________

# VARIABLES
{{{  What are variables?


`Variables are used to store information to be referenced and manipulated in a
computer program. ` 

    variables store information to be referenced and manipulated



}}}
{{{  Provide examples of different variable types and their qualities


`formal_definition`

    method parameters
    block parameters
    local variables

    global variables
    $var = "you can reference me at any point in the program"
    constants


}}}
{{{  Demonstrate initalization

    You initialize a variable like so:

    name = "William"

    Here, I initalize the variable `name` and assign it the String "William"

}}}
{{{  What is meant by 'variables as pointers'?


`formal_definition`

    my_answer




}}}
{{{  What is variable reassignment?



    As variables are pointers, a variable can be assigned to a different
    object than it was when created.

    first_name = "William"
    first_name = "Will"




}}}
{{{  What is variable scope?


`formal_definition`

    my_answer




}}}
{{{  How does variable scope work in methods? Provide an example


`formal_definition`

    my_answer




}}}
{{{  How does variable scope work in blocks? Provide an example


`formal_definition`

    my_answer




}}}
{{{  What is variable shadowing? Provide an example.

}}}


# OPERATORS
{{{  What is an operator?

}}}
{{{  Provide examples of numeric operators

# numeric             **  *   /   %   +   -   divmod

    a ** b
    a * b
    a / b
    a % b               modulo: pos/neg depends on b
    a.remainder b       remainder: pos/neg depends on a
    a.divmod b          divmod: [quotient, remainder]
    a + b
    a - b
}}}
{{{  Provide examples of conditional operators

# conditional         ==  !=  <   >   <=  >=  ? :

    ==                  equality
    !=                  not equal
    <, >, <=, >=, <=>   greater/less than
}}}
{{{  Provide examples of assignment operators. Where are they most common? 

# assignment          +=  -=  *=

    =
    +=              left operand gets result
    -=
    *=
    /=      
    %=
    **=
}}}
{{{  Demonstrate parallel assignment. Is it useful?
# parallel assignment
    a, b, c = 10, 20, 30

}}}
{{{  Provide examples of logical operators. Demonstrate short-circuiting 

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

}}}
{{{  Provide examples of String operators. Are they useful?

# string

#       +   concatenation: 
    `first_name + ' Seipp`

#       *   returns a new String containing integer copies of itself 
    `'hello' *3`  
}}}
{{{  What is operator precedence? Why is it important to know?

Operators with highest precedence will get evaluated before those with 
lower and bind those operands. Good examples:
    
    ( 'foo' && 'bar' ) || 'baz'
    ( 3 * 2 ) + 7
}}}
{{{  What are some good tips for working with / trying to remember precedence?

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
}}}


# METHODS
{{{  What is a method?
`A method is a way to perform actions repeatedly and extract this to one place`

    def say(words)
      #do something with words
    end

`words` is a parameter; it is used to access data outside of the method's
scope within the method definition.
}}}
{{{  What are the parts of a method definition?

}}}
{{{  What is the difference between implicit and explicit return values?

Ruby methods always return the evaluated result of the last line of the
expression unless an explicit return comes before it like so:

    def some_method
      return "hi"
      puts "hello"
    end
}}}
{{{  What is the difference between output of a method and a return value?

many methods have only return values. Examples include

    String#sub
    Integer#to_s

some methods perform an action AND have a return value. Methods like

    Kernel#puts     displays string output and returns nil
    String#gsub!    mutates the caller and returns self

There is a distinction
}}}
{{{  Demonstrate how a method is used

}}}
{{{  What are default parameters?


# default parameters

    def greeting(words="hello")
      puts words + "!"
    end

    greeting
    # => "hello."


}}}
{{{  What are some commonly used methods so far?

# puts
returns nil

}}}
{{{  What on Earth is a side effect? 
}}}
{{{  What are some 'best practices' to use when creating methods?

}}}
{{{  Is Ruby pass-by-value or pass-by-reference?
# pass-by-reference vs pass-by-value
    watch the videos / articles and condense the information into takeaways
    AND record the formal concept that will asked be for on the assessment

}}}
{{{  What is the call stack?

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

}}}
{{{  Demonstrate the call stack in a simple example

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


# CONDITIONALS
{{{  What is an expression and what is meant by 'return'?

`Ruby expressions always return a value`
    
    an expression is code that can be evaluated to some value, even if its
    an error message or nil
}}}
{{{  What is a conditional expression?

}}}
{{{  Provide examples of all conditional expressions used thus far


}}}
{{{  What is nil?


``
    
    In Ruby, nil is the absence of value
}}}
{{{  Provide an example of nil used in a conditional expression. What happens?


`An important property of the nil type is that when used in an expression, such
as an if statement, it will be treated as false, as it represents an absence of
content.`




    if nil
      puts "I encountered a nil"
    end




when used in an expression, nil will be **treated** as false and the following
branch will not be executed





}}}
{{{  What is truthiness?

`all objects other than `false` and `nil` will evaluate to `true` in an
expression`
}}}
{{{  Provide an example of truthy/falsy values used in a conditional

    if name
      puts 'name was truthy'
    else
      puts 'name was falsey'
    end

}}}


# LOOPS
{{{  What is a loop?

}}}
{{{  Provide examples of different types of loops

}}}
{{{  What is iteration?

}}}
{{{  Provide examples of different types of iteration

}}}
{{{  What is recursion?

}}}
{{{  Provide examples of recursion

}}}
{{{  example_question


`formal_definition`

    my_answer




}}}
{{{  example_question


`formal_definition`

    my_answer




}}}


# RANDOM
{{{  What is mutability? What is meant by a variable being 'immutable'?

}}}
{{{  example_question


`formal_definition`

    my_answer




}}}


# NUMBERS

{{{ NUMBERS

# integers

# floats

# times

# to_s

# to_i

# to_f


}}}
{{{  What are the two classes that Ruby uses for numbers?

}}}
{{{  example_question


`formal_definition`

    my_answer




}}}
{{{  example_question


`formal_definition`

    my_answer




}}}


# STRINGS
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
{{{  Demonstrate all methods of the String class used thus far

}}}
{{{  example_question


`formal_definition`

    my_answer




}}}


# ARRAYS
{{{ ARRAYS

# syntax

# properties

# methods

}}}
{{{  Demonstrate all methods of the Array class used thus far

}}}
{{{  example_question


`formal_definition`

    my_answer




}}}
{{{  example_question


`formal_definition`

    my_answer




}}}



# HASHES
{{{ HASHES

hash syntax

hash methods used in book

}}}
{{{  example_question


`formal_definition`

    my_answer




}}}
{{{  example_question


`formal_definition`

    my_answer




}}}



# TYPE CONVERSION

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
{{{  example_question


`formal_definition`

    my_answer




}}}
{{{  example_question


`formal_definition`

    my_answer




}}}
______________________________________________________________________________

# PROBLEMS
{{{ problem 1: mutation
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

{{{  book answer
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
{{{  my answer: m:ss
On line 7, the local variable `s` is assigned the String `'hello'`
This value gets passed to `fix` on line 8, and the method parameter
`value` is bound to the String `'hello'`. This String then calls the `#upcase!`
method on itself on line 2, changing itself to `HELLO`. On line 3, the same
String calls the `#concat` method on itself with the String `'!'` as an 
argument, changing itself to `'HELLO!'`. On line 4, the reference to this
String is returned by the method, which then gets assigned to the local 
variable `t`. As a result, both `s` and `t` reference the same String `HELLO!`

This example demonstrates the concept of pass-by-reference

}}}


}}}
{{{  example_question


`formal_definition`

    my_answer




}}}
{{{  example_question


`formal_definition`

    my_answer




}}}


