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


    better to say more than leave out information the TA feels is important

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
{{{  NOTE-TAKING PROCEDURE

1. As I read through the material, I summarize concepts into `question /answer`
   pairs. A `question` creates a distinct part of an overall topic. The `formal
answer` is copied from the course and there primarily to ensure that my later
summary is correct. Including the `formal answer` is also important for
adopting a precise & simple language for my own thinking / answering. 

2. I group these `question / answer` pairs together after finishing a lesson
   and create a heading that describes the overall topic being covered. This
'table of contents' is then compared to the study guide for throughness.

3. I then answer these questions and provide examples to test my understanding.
   I use precise language and compare my answers to the `formal answer` I
provided earlier. When asked to provide an example, I create my own and explain
the syntax and output with precise language. I run these code samples to ensure
that their output is the same that I predicted.

4. Then, I include lesson quizzes and place extra practice questions covering
   those topics that I didn't answer correctly at the bottom of the notes.

5. Lastly, I source additional questions and provide `my answer` for these
   questions, treating them like actual exam questions. How long it took will
be written. If the question is similar enough to a question covered in the
course, a `book answer` will be included to determine if I'm being correct AND
precise.

Notes should ultimately turn into a study guide for exams and need to be:
* comprehensive: it covers all topics in the course
* structured: it is grouped in a way that's easy for me to understand & review
* definitive: concept definitions and examples are provided by Launch School
* practice: get good at answering exam questions by drilling them here

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

# constant  available everywhere. Cannot be declared in method definitions
    DATE_OF_BIRTH: "08/29/1985"


}}}
{{{  Demonstrate initalization

    You initialize a variable like so:

    name = "William"

    Here, I initalize the variable `name` and assign it the String "William"

}}}
{{{  What is meant by 'variables as pointers'?


`variables dont contain values; they contain pointers to a specific area in
memory that contains a value`


    Variables are a reference to objects stored in memory




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
{{{  What determines a variable's scope?

    `Where a variable is initalized determines its scope`

}}}
{{{  How does variable scope work in methods? Provide an example


`formal_definition`

    def some_method
      name = "William"
    end

    puts name   # => this won't work. Variables initialized inside a method
    definition are only available within the method definition.




}}}
{{{  How does variable scope work in blocks? Provide an example


`outer scope variables can be accessed by inner scope`

    name = "william"

    loop do
      first_name = name.capitalize!
      break
    end

    puts first_name


    I can reference a variable initialized outside of the block inside the 
    innter scope of the block. In this example, it is `name`. However, I
    cannot access the variable `first_name` outside the scope of the block.
    "Inner can use outer, but not vice versa"



}}}
{{{  What is variable shadowing? Provide an example.
    
    This occurs when you attempt to reference a variable within the inner
    scope of a block but it has the same name as the block parameter. Any
    reference to the variable of this name will be made to the block parameter
    and not the variable in the outer scope. We can say the block parameter
    casts a shadow on the variable in the outer scope, obscuring its 
    visibility.

    name = "will"

    loop do |name|
      puts name.upcase
      break
    end

    
}}}
{{{  What is mutability? What is meant by a variable being 'immutable'?

`Mutable objects can be mutated - that is, their values can be altered;
immutable objects cannot be mutated - they can only be reassigned`

    Mutability is whether or not an object's value can be changed.
    A variable being immutable means that its value cannot change.

    Numbers, booleans, nil, and Range objects are immutable. In addition,
    any class can be immutable if you don't provide methods for altering
    its state.
}}}



# METHODS
{{{  What is a method?

`A method is a way to perform actions repeatedly and extract this to one place`

}}}
{{{  Demonstrate how a method is used


We define a method with the keywords `def` and `end`, specify method parameters
inside parantheses with `()`

    def greeting(phrase)
      puts phrase
    end

And then use it by invoking with or without arguments

    greeting("hi")

}}}
{{{  What are the parts of a method definition?

    

    def greeting(name = "Hello")
      puts name
    end

    greeting("hi")

    
    `greeting` is the method name
    `name` is the method parameter. It is a variable local to the method scope
    `"Hello"` is the value `name` is assigned to when there are no arguments
    `"hi"` is an argument to the method
    `puts name` is the last evaluted expression in the method, therefore it
        is returned by the method. In this case, it is 'nil'
}}}
{{{  What are default parameters?



Default parameters are the values that you assign to method parameters
when no arguments are passed on method invocation




}}}
{{{  Demonstrate how to define default parameters for a method

All that is required is to assign the parameter to some arbitrary value.
If no default value exists, the parameter will be assigned to the method's 
argument

    def greeting(word = "hi")
      puts word 
    end

    greeting()
    greeting("Hello")

    


}}}
{{{  Demonstrate the relationship between method parameters and arguments


`Parameters are the names assigned to a method's arguments; arguments are the
values that get passed to the method`

Parameters are variables local to the method scope and are assigned to the
arguments passed in on method invocation.

When we call a method with some variables, the value of those variables are
called arguments. Variables are NOT arguments.

}}}
{{{  Do variables get passed to or returned by methods?

No, variables are names/references for objects in memory. It is
the values of these objects or the references to these objects that
are passed to methods and returned by methods. 


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
{{{  What are some commonly used methods so far?

# puts takes String arguments and displays them to the std.out which 
# is usually a computer screen

returns nil

}}}
{{{  What is a side effect? 






    A side effect is some persistent change that happens outside the scope
    of what you're currently in. An example would be the following:

    def some_method(parameter)
      # mutate the parameter
    end

    some_method(some_var)


    While inside the scope of a method definition, you create a mutation of
    the argument that was passed in. This is a side effect and you must
    communicate this explicitly within your code even if its intentional.






}}}
{{{  What are some 'best practices' to use when creating methods?



# method!
When you create a method that will perform mutation, convention dictates
that you append a '!' at the end of the method name to signify this method
has some side effect.



# side effects OR return values
Any methods that have side effects should not also have return values or
some other output because those features are not reflected in the method
name. We want to be explicit about what our method does by using a descriptive
name that maps to the one thing that the method is responsible for doing.



# boolean?
Methods that return booleans should end with a '?'

}}}
{{{  Is Ruby pass-by-value or pass-by-reference?
# pass-by-reference vs pass-by-value



    What Ruby does is pass the reference ( object_id ) for all arguments
    of methods. When the argument is immutable ( like an integer ), it appears
    that Ruby will only take the value of the argument and not mutate the
    argument. However, if the argument is mutable ( like a String object ),
    the method may call additional methods in the body to mutate the referenced
    object and so, the method appears to pass by reference.

    In short, Ruby appears to pass by value or reference depending on the
    mutability of the argument but this obscures the fact that Ruby methods
    are always passed the object_ids of arguments
     

}}}
{{{  What is the call stack?

    The call stack is a data structure that keeps track of what methods
    have been called and at what line execution deferred to another method.
    
    As stacks are LIFO ( last in, first out data strucutres ), the current
    method being executed is at the top of the stack, and the first method
    that was executed ( main ) is at the bottom of the stack. Each entry on
    the stack contains two pieces of information; the method name and the
    line to return to when that method is done execution

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


    an expression is code that can be evaluated to some value. They could
    be said to 'return' a value but thats not precise; they evaluate to
    some value, whether it is a boolean, truthy value, or something...............


    Here is an example:    a || b

    This is a conditional expression; we are expressing some logic based on
    the boolean representation of the variables 'a' and 'b' and if either of
    them are 'true' or 'truthy', the expression evaluates to 'true' or 'truthy'


`Ruby expressions always return a value`
    
    an expression is code that can be evaluated to some value, even if its
    an error message or nil
}}}
{{{  What is a conditional expression?

`A conditional is a fork in the road`

`Conditionals are formed using a combination of if statements and comparison
and logical operators. They are basic logical structures that are defined with
the reserved words if, else, elsif, and end`

    A conditional expression includes conditional operators like ! or && or
    || or >= to compare one or more operands so that the expression as a whole
    evaluates to a boolean value or some 'truthy' value. 

    They are designed to be evaluated by conditional statements that execute
    a branch of code based upon the output



}}}
{{{  Provide examples of all conditional expressions used thus far

    name = "Will"

    if name == "William"
      puts "my name is #{name}"
    else
      puts "my name isn't William, it is #{name}!"
    end

    puts "my name is William" if name == "William"


    case name
    when "William"
      puts "my name is #{name}"
    when "Will"
      puts "this what friends call me: #{name}"
    else
      puts "{name} is not something I go by"
    end

}}}
{{{  What is nil?

    In Ruby, nil is the absence of value. 
    A variable that is not initalized with some value has the default
    value of nil.

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









`In Ruby, every expression evaluates as true when used in flow control, except
for false and nil`

    a = 5
    if a
      puts "how is a true?"
    else
      puts "a must be either false or nil!"
    end









}}}
{{{  Provide an example of truthy/falsy values used in a conditional

    name = "Will"

    if name
      puts 'name was truthy'
    else
      puts 'name was falsey'
    end


    name references a String object, not boolean. However, as all objects
    that are not false or nil will evaluate as truthy in a conditional
    expression, `name` will evaluate as truthy and cause the statement
    below it to execute

}}}


# OPERATORS
{{{  What is an operator?
    
    An operator is a token that represents an operation to be performed on
    one or more operands.

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
{{{  Provide examples of comparison operators

# conditional         ==  !=  <   >   <=  >=  ? :

    ==                  equality
    !=                  not equal
    <, >, <=, >=, <=>   greater/less than
}}}
{{{  Provide examples of equality operators
    
    a == b     returns 'true' or 'false' based on whether
                a and b have the same value

    a != b     returns 'true' if a and b do not have the same values 

    !a         returns 'true' if a is false
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

    assignment operators that also perform numeric operations are most often
    seen in loops / iteration when a variable is incremenented / decremented.

    the = assignment operator is prevalent everywhere, and assigns variables
    to an object

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

    remember CELL

    Comparison:  < <= > >=
    Equality:   != ==
}}}
{{{  What are some good tips for working with / trying to remember precedence?

CELL

comparison
equality
logical AND
logical OR

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


# LOOPS
{{{  What is a loop?

`A repetitive execution of a piece of code for a given amount of reps or until
a certain condition is met` 

    a defined, repetitive execution of code


}}}
{{{  Provide examples of different types of loops

    loop do
      puts "this is infinite"
    end

    loop do
      puts "this will execute once"
      break
    end

    loop do
      puts "this will execute one more times"
      break if continue == true
    end

    is_raining = true 

    while is_raining
      puts "rain rain, go away"
    end
    

    until is_raining == false
      puts "rain rain, go away"
    end


    for i in 1..10 do
      puts "hi"
    end

    **note** for loops return the collection, much like
    many methods of the Enumerator module returns self
    
}}}
{{{  What are some keywords that can be included in loops?

    break: exits the loop ( usually provided with if statement)
    next: skips iteration ( provided with an if statement)
}}}
{{{  What are iterators?



    Iterators are methods of the Enumerable module that allow looping
    over a set of data and allow you to operate on each element in the
    collection.


}}}
{{{  Provide some examples of iterators


    array.each { |element| puts element }

    array.select { |element| element > 2 }


}}}
{{{  What is recursion?

}}}
{{{  Provide examples of recursion

}}}


# NUMBERS
{{{  What are the two classes that Ruby uses for numbers?

    integers and floats
}}}
{{{  Demonstrate the use of common methods for numbers thus far

# times


    2.times { |number| puts number }

    An important distinction must be made; `number` will reference
    a range of integers that start at 0 and end with the n-1, where n is the
    integer value of the object. In the above example, this would be 0, 1


# to_s

    2.to_s      # => "2"

    

# to_i


    3.14.to_i   # => 3


# to_f


    3.to_f      # => 3.0




}}}


# TYPE CONVERSION
{{{  What is type conversion?
    
    It is the act of "converting" one variable into another type,
    like a float to an integer

    4.to_f      # => 4.0

}}}
{{{  Demonstrate the use of type conversion methods
# to_s
    [1, 2, 3].to_s
    # => "[1, 2, 3]"

# to_i          to integer: interprets leading characters
    '4 score'.to_i
    # => 4

# to_f          to float: interprets leading characters
    'a5'.to_f
    # => 0

# to_a          to array: returns array of 2-element arrays

method doesnt exist for numbers and strings!

    { name: "Will", age: 37 }.to_a
    # => [[:name, "Will"],[:age, 37]]

# to_h     must provide a block or an array of 2-element sub-arrays
    [[0, "alice"], [1, "bob"]].to_h
    # => { 0 => "alice", 1 => "bob" }

}}}


# STRINGS
{{{  What is a string?
    
    A sequence of characters grouped by ' or " into a single object. We can
    think of them as 'words' but this is incorrect, as "123" is a string but
    isnt a word in the common sense
 
}}}
{{{  What is string interpolation?



    String interpolation is a way to include the String value that variables
    reference in a larger string in a convenient manner. Here's an example:

    name = "Will"

    puts "Hello everyone, my name is #{will}"


    We use the #{} marks to enclose a variable name in order to concatenate
    the String value of the variable within the larger String being passed
    to the `puts` method invocation




}}}
{{{  Demonstrate all methods of the String class used thus far


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


# ARRAYS
{{{  What is an array?

    syntax: 
}}}
{{{  What are some properties of arrays?

}}}
{{{  Demonstrate all methods of the Array class used thus far

    numbers = [1, 2, 3]
# size      returns the number of elements in self
        
    numbers.size    # => 3

# push      appends self with given object

    numbers.push(4) # => [1, 2, 3, 4]

# pop       removes and returns the last element from self

    numbers.pop     # => [4]
    numbers         # => [1, 2, 3]

# to_h      returns a new hash formed from self

}}}



# HASHES
{{{  What is a hash?

    hashes are a collection of key-value pairs

    hash syntax: my_name = { first: "William", last: "Seipp" }

}}}
{{{  What are some properties of a hash?

}}}
{{{  Demonstrate all methods of the Hash class used thus far

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
{{{  problem 1

def test(str)
  str += '!'
  str.downcase!
end

test_str = 'Written Assessment'
test(test_str)
puts test_str

}}}
{{{  problem 2

    def plus(x,y)
    x = x + y
    end
    
    a = 3
    b = plus(a,2)

    puts a
    puts b
}}}
{{{  problem 3

def increment(x)
  x << 'b'
end

y = 'a'
increment(y)
puts y

}}}
{{{  problem 4

    def change_name(name)
      name = 'bob'   # does this reassignment change the object outisde the method?
    end

    name = 'jim'
    change_name(name)
    puts name

}}}
{{{  problem 5

def cap(str)
    str.capitalize!   # does this affect the object outside the method?
end

name = "jim"
cap(name)
puts name

}}}
{{{  problem 6


a = [1, 3]
b = [2]

arr = [1,b]
arr a[1] = 5

arr

}}}


# mutating methods
{{{  problem 7

    def fix(value)
      value.upcase!
      value.concat('!')
      value
    end

    s = 'hello'
    t = fix(s)

}}}
{{{  problem 8

    def fix(value)
      value << 'xyz'
      value = value.upcase
      value.concat('!')
    end

    s = 'hello'
    t = fix(s)


}}}
{{{  problem 9

    def fix(value)
      value = value.upcase!
      value.concat('!')
    end

    s = 'hello'
    t = fix(s)

}}}
{{{  problem 10

    def fix(value)
      value[1] = 'x'
      value
    end

    s = 'abc'
    t - fix(s)

}}}
{{{  problem 11

    def a_method(string)
      string << 'world'
    end

    a = 'hello'
    a_method(a)

    p a

}}}
{{{  problem 12

    a = %w(a b c )
    a[1] '-'
    p a

}}}
{{{  problem 13

    def add_name(arr, name)
      arr = arr + [name]
    end

    names = ['bob', 'kim']
    add_name(names, 'jim')
    puts names

}}}

# truthiness
{{{  problem 14

    a = "Hello"
    if a
      puts "Hello is truthy"
    else
      puts "Hello is falsey"
    end

}}}
{{{  problem 15

    def test
      puts "written assessment"
    end

    var = test
    
    if var
      puts "written assessment"
    else
      puts "interview"
    end

}}}
