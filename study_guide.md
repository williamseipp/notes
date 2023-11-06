{{{   RUBY 109


# LANGUAGE
# VARIABLES
# CONDITIONALS
# OPERATORS
# METHODS
# NUMBERS
# STRINGS
# ARRAYS
# HASHES
# LOOPS
# TYPE CONVERSION
# RANDOM

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

  I will note key concepts that are shown.
  Later, I will figure out what is the most important concepts are.
  I will build a mock exam out of problems that demonstrate these concepts.
  Answer those questions on the mock exam

}}}

______________________________________________________________________________

# LANGUAGE
{{{  example of a method parameter calling a method that doesnt mutate the caller

    1. def fix(value)
    2.   value = value.upcase
    3. end
    4.
    5. s = 'hello'
    6. t = fix(s)
______________________________________________________________________________
    On line 2, we assign the return value of `value.upcase` back to `value`.
    This call to `upcase` creates a copy of the String referenced by `value`,
    mutates it, and returns the reference to this new String. We then bind
    `value` to the reference.

}}}
{{{  example of a method parameter calling a mutating method

    1. def fix(value)
    2.   value = value.upcase!
    3. end
    4.
    5. s = 'hello'
    6. t = fix(s)
______________________________________________________________________________
    On line 2, we call the method `upcase!` on `value`, mutating the String
    that `value` references. Then, `value` is reassigned to this String.

}}}



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

When no arguments are passed to a method call, parameters have a default value

    def greeting(word="hello")
      puts word
    end

    greeting
    greeting("G'day guvnah")

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
    the stack contains two pieces of information; the method name that was
    executing and where it stopped executing ( to return back to )

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
{{{  What are the 3 types of conditionals we covered?

    if/else statements
    case statements
    ternary expression

}}}
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
{{{  Demonstrate an example of {} precedence producing unexpected output

    array = [1, 2, 3]

    p(array.map) do |num|
      num + 1                           #  <Enumerator: [1, 2, 3]:map>
    end                                 #  => <Enumerator: [1, 2, 3]:map>

    p(array.map { |num| num + 1 })      # [2, 3, 4]
                                        # => [2, 3, 4]

}}}
{{{  What are some good tips for working with / trying to remember precedence?

    Arithmetic operators have the same precedence in Ruby as they do in
    mathematics. PEMDAS applies here.

    
    Here are operators, starting from highest precedence
    !
    **
    *   /   %
    +   -
    
    <<  >>
    &
    |   ^
    >   >=  <   <=
    <=> ==  === !=  =~  !~
    &&  ||
    ..  ...
    ?   :


!    ~    unary +
**
unary -
*    /    %
+    -
<<    >>
&
|    ^
>    >=    <    <=
<=>    ==    ===    !=    =~ !~
&&
||
..    ...
?    :
modifier-rescue
=    +=    -=    etc.
defined?
not
or    and
modifier-if    modifier-unless    modifier-while    modifier-until
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
    
    Recursion is the act of calling a method from within itself.

}}}
{{{  Provide examples of recursion

    def doubler(start)
      puts start
      if start < 10
        doubler(start * 2)
      end
    end

    doubler(1)

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

    An array is an ordered list of elements of any type

    %w(apples 2 3)   # => ["apples", "2", "3"]

    %w is not a method, its just special notation for convenience
}}}
{{{  What are some properties of arrays?

}}}
{{{  Demonstrate all methods of the Array class used thus far

# +         returns a new Array with all elements of a1, then all of a2
    
    new_array = [1] + [2, 3, "four"]

    numbers = [1, 2, 3]

# size      returns the number of elements in self
        
    numbers.size    # => 3

# push      appends self with given object ( alias for append )

    numbers.push(4) # => [1, 2, 3, 4]

# concat    appends self with given object

# shift     removes and returns the first element from self

    numbers = [1, 2, 3, 4]
    numbers.shift   # => 1

# pop       removes and returns the last element from self

    numbers = [1, 2, 3, 4]
    numbers.pop     # => [4]
    numbers         # => [1, 2, 3]

# to_h      returns a new hash formed from self


# include?  returns true if the given object is present in the array

    a1 = [1, 2]
    a1.include?(1)  # => true

# at        returns the element at integer offset index

    a1 = [1, 2]
    a1.at(0)        # => 1

# first     returns the first element of self

    array = [1, 2, 3]
    array.first     # => 1

# last     returns the last element of self

    array = [1, 2, 3]
    array.last     # => 3

# delete_at     deletes an element from self at the given index

    number = [1, 2, 3, 4]
    number.delete_at(0)     # => [2, 3, 4]

# delete        deletes all instances of the given object from self

    number = [1, 2, 4, 3, 4]
    number.delete(4)     # => [1, 2, 3]
    
# flatten       returns a flat array

    nested_array = [[1, 2], [3, 4]]
    nested_array.flatten    # => [1, 2, 3, 4]

# uniq          returns an array with only unique elements

    duplicates = [1, 2, 1, 1, 3]
    duplicates.uniq    # =>  [1, 2, 3]

# to_s          returns the array as a new String

    
    duplicates = [1, 2, 1, 1, 3]
    duplicates.to_s     # => "[1, 2, 1, 1, 3]"

# slice         returns a sub-array; does not modify self

    duplicates = [1, 2, 1, 1, 3]
    duplicates.slice(0, 2)      # => [1, 2]
    duplicates.slice(0)         # => [1]
    
}}}



# HASHES
{{{  What is a hash?

    hashes are a collection of key-value pairs

    hash syntax: my_name = { first: "William", last: "Seipp" }

}}}
{{{  What are some properties of a hash?

    provide a key to the hash, and you will get a reference to the
    corresponding value, if the key exists

}}}
{{{  Demonstrate all methods of the Hash class used thus far

    
    person = { name: "William", age: 38 }
    person_array = person.to_h
    person  # => [[:name, "William",], [ :age, 38]]

}}}


______________________________________________________________________________

# PROBLEMS

{{{  problem 1

 1   def test(str)
      str += '!'
      str.downcase!
    end

    test_str = 'Written Assessment'
    test(test_str)
    puts test_str


On line 5, the local variable `test_str` is initialized to the String 
`'Written Assessment'` and this value is passed as an argument to `test` on
line 6. We can see that from the method definition that the method parameter
`str` and the local variable `test_str` both reference the same String. On line
2 however, the method parameter `str` is reassigned to a new String because of the
`+=` method invocation. Any further changes within the method to the String
referenced by `str` has nothing to do with the original argument passed in.

That is why on line 8, when the method `puts` is called with the argument of
`test_str`, the output is `Written Asessment`; no mutation of the original
object has occurred.

This example demonstrates the concept that assignment never changes the
referenced object.

}}}
{{{  problem 2

 1   def plus(x,y)
      x = x + y
    end
    
5    a = 3
    b = plus(a,2)

    puts a
    puts b


On line 5, the local variable `a` is initialized to 3. We initialize another
variable `b` on line 6 with the return value of the `plus` method call with
the given arguments. As the arguments are the values of `a` and `2`, the
method parameters on line 1 `x` and `y` reference these values. 

On line 2, the `+` method is called and the return value of `5` is what the
variable `x` is assigned to. In turn, this is return value that the local
variable `b` gets assigned to.

On line 8, the value of `a` is passed as an argument to `puts` and outputs
`3`. On line 9, the value of `b` is passed as an argument to `puts` and outputs
`5`

This example demonstrates the concept of pass-by-value in Ruby.


}}}
{{{  problem 3

 1   def increment(x)
    x << 'b'
    end

5    y = 'a'
    increment(y)
    puts y


On line 5, the local variable `y` is assigned to the String `'a'`. On line 6,
the method `increment` is invoked and the value of `y` is passed as an
argument. 

The method parameter `x` on line 2 references this String, and it calls the
`<<` method on itself to concatenate the String `'b'` to itself. As the String
object that `y` references is now `'ab'`; when it is passed to the `puts`
method call on line 7, the output is `ab` and the return value is `nil`

This example demonstrates the concept of pass-by-reference in Ruby.

}}}
{{{  problem 4

 1   def change_name(name)
      name = 'bob'   # does this reassignment change the object outisde the method?
    end

 4   name = 'jim'
    change_name(name)
    puts name

On line 4, the local variable `name` is initalized to the String `'jim'`. On
line 5, we invoke the method `change_name` and pass the value of `name` as
an argument. 

We can see that the method parameter `name` defined on line 1 is bound to the
argument `'jim'`. On line 2, the method parameter `name` is reassigned to a
new String `'bob'`. As the String referenced by the local variable `name` has
not been modified, when it is passed as an argument to `puts` on line 6, the
output will be `jim` and the return value will be `nil`. 

This examples demonstrates that assignment never changes the referenced object.

}}}
{{{  problem 5

 1   def cap(str)
      str.capitalize!   # does this affect the object outside the method?
    end

  5  name = "jim"
    cap(name)
    puts name


On line 5, we initialize the local variable `name` to the String `"jim"`. On
line 6, we invoke the `cap` method and pass the value of `name` to it as an
argument.

The method parameter `str` on line 1 is bound to this argument `"jim"`. On
line 2, the String `"jim"` calls the mutating `capitalize!` method on itself.
Therefore, the value that `name` and `str` both reference has been mutated to
`"JIM"`. This String is passed as an argument to the `puts` method on line 7
and the output is `JIM` and the return value is `nil`.

This example demonstrates the concept of pass-by-reference in Ruby. 

}}}
{{{  problem 6 THIS IS BAD QUESTION. YOU CANT REFERENCE ELEMENTS OF AN ARRAY
        BY VALUE, ONLY BY INDEX WHICH ARE NUMBERS


 1   a = [1, 3]
    b = [2]
    
 3   arr = [a,b]
    arr a[1] = 5
    
 6   arr


On line 1, the local variable `a` is initialized to the array `[1, 3]`. On
line 2, the local variable `b` is initialized to the array `[2]`. On line 3,
the local variable `arr` is assigned to a new array containing both arrays
referenced by the variables `a` and `b`. This array object is `[[1, 3], [2]]`.
On line 4, the second element of the sub array `a` within `arr` is reassigned
to a new value `5`. The local variable `arr` now points to an array whose 
value has changed to `[[1, 5], [2]]`, 

This example demonstrates the concept that indexed assignment is mutating.



}}}


# mutating methods
{{{  problem 7

 1   def fix(value)
      value.upcase!
      value.concat('!')
      value
 5   end

 7   s = 'hello'
    t = fix(s)


On line 7, the local variable `s` is assigned to the String object `'hello'`.
On line 8, we invoke the `fix` method and pass the value of `s` as an argument.

This value `'hello'` is also referenced by the method parameter `value` on
line 1; both `value` and `s` reference the same String. On line 2, we call the
`upcase!` method on this String and mutate it to `'HELLO'`. On line 3, we
call the `concat` method with the String `!` as an argument, appending itself
such that the local variable `s` and `value` both reference the String
`'HELLO!'`. The reference to this String is the return value of the `fix`
method call and now the local variable `t` is now assigned to this String.

This example demonstrates the concept of pass-by-reference.

}}}
{{{  problem 8

1    def fix(value)
      value << 'xyz'
      value = value.upcase
      value.concat('!')
6    end

8    s = 'hello'
    t = fix(s)

On line 8, the local variable `s` is assigned to the String `'hello'`. On line
9, the `fix` method is invoked and `'hello'` is passed as an argument to it. 
The method definition that starts on line 1 has a method parameter `value` 
that is bound to this argument, such that it references the same String as `s`.

On line 2, this String calls the `<<` method to append the String argument 
`'xyz'` to itself and the String has changed into `'helloxyz'`. On line 3,
this String calls the `upcase` method and returns a new String `'HELLOXYZ'`;
and the variable `value` gets reassigned to this new String. On line 4, this
String calls the `concat` method with `'!'` as a parameter, mutating the String
to the value `'HELLOXYZ!'`. This string is the return value of the method and
the local variable `t` on line 9 is assigned to this String. So `s` references
the String `'helloxyz'` and `t` references the String `'HELLOXYZ!'`.

This example demonstrates the concept of pass-by-reference in Ruby, and the
fact that assignment does not mutate the referenced object.


}}}
{{{  problem 9

 1   def fix(value)
      value = value.upcase!
      value.concat('!')
    end

 6   s = 'hello'
    t = fix(s)

On line 7, the String that the local variable `s` references is passed as an
argument to the invocation of the `fix` method. We can see on line 1 that the
method parameter `value` also references the String argument `'hello'`.

On line 2, this String calls the `upcase!` method on itself such that its
value is `'HELLO'`, and `value` is reassigned to this String. On line 3, this
String calls the `concat` method with `'!'` as an argument, mutating itself
into `HELLO!`. On line 7, the local variable `t`
is also assigned to this String, such that both variables `s` and `t` 
reference the same String `'HELLO!'

This example demonstrates the concept of pass-by-reference and mutation

}}}
{{{  problem 10

 1   def fix(value)
      value[1] = 'x'
      value
 4   end

    s = 'abc'
    t - fix(s)

On line 6, the local variable `s` is assigned the String `'abc'`. This value
is then passed as an argument to the method invcation `fix` on line 7. Both
`s` and the method parameter `value` point to this String.

On line 2, this String calls the `[]` method, changing its character at the
given index `1` to the String argument `'x'`, mutating itself to `'axc'`.
The reference to this String is returned by the method, and the local variable
`t` is assigned to it on line 7. Both variables `s` and `t` reference this
String `'axc'`

This example demonstrates that indexed assignment is mutating.

}}}
{{{  problem 11

 1   def a_method(string)
      string << 'world'
    end

 5   a = 'hello'
    a_method(a)

 8   p a



On line 5, the local variable `a` is assigned the String `'hello'`. On line 6,
this String gets passed as an argument to the method invocation of `a_method`
and the method parameter `string` is bound to it.

On line 2, this String calls the `<<` method and appends itself with the String
argument `'world'` such that its value is now `'helloworld'`. When this String
is passed as an argument to the method invocation of `p` on line 8, it outputs
`'helloworld'` and returns `nil`.

This example demonstrates the concept of pass-by-reference.

}}}
{{{  problem 12

    a = %w(a b c )
    a[1] '-'
    p a


On line 1, the local variable `a` is assigned to the Array `["a", "b", "c"]`.
On line 2, this Array calls the `[]` method to change the String at the given
index of `1` to the String argument `'-'` so that it is now `["a", "-", "c"]`.
When this array is passed as an argument to the method invocation `p` on line
3, it outputs `["a", "-", "c"]`

This example demonstrates the concept that indexed assignment is mutating.
}}}
{{{  problem 13

    def add_name(arr, name)
      arr = arr + [name]
    end

5    names = ['bob', 'kim']
    add_name(names, 'jim')
    puts names

On line 5, the local variable `names` is assigned an Array `['bob', 'kim']`.
On line 6, the `add_name` method is invoked and passed the array referenced by
`names` and the String `'jim'` as arguments. We can see from the method
definition on line 1 that these arguments are bound to the method parameters
`arr` and `name`, respectively.

On line 2, the Array referenced by `arr` calls the `+` method to return a new
Array with all elements in itself and the other newly created Array `[name]`.
The variable `arr` is reassigned to this new Array `['bob', 'kim', 'jim']`
but no variable is assigned to this new Array. As the method `add_name` created
a new Array but didn't mutate its Array argument, the local variable `names`
remains unchanged from the value it was initialized with. So, when its value
is passed as an argument to the `puts` method invocation on line 7,
`bob`
`kim`
is output and `nil` is returned.

This example demonstrates the concept that assignment does not mutate the
referenced object.

}}}

# truthiness
{{{  problem 14

    a = "Hello"
    if a
      puts "Hello is truthy"
    else
      puts "Hello is falsey"
    end

On line 1, the local variable `a` is assigned to the String `"Hello"`. Because
the variable `a` is not nil or false, it evaluates as true in the conditional
on line 2. Therefore, the code on line 3 executes; and a String `"Hello is truthy"`
is passed as an argument to the method invcation `puts`. The output is 
`Hello is truthy` and `nil` is returned.

This example demonstrates the concept of truthiness. 

}}}
{{{  problem 15

    def test
      puts "written assessment"
    end
4
    var = test
6    
    if var
      puts "written assessment"
9    else
      puts "interview"
    end

On line 5, the local variable `var` is assigned to the return value of the
`test` method invocation.  In the `test` method definition on line 2, the call
to the `puts` method causes the `test` method to return `nil`, and this is the
value of `var`.

So, when `var` is evaluated in the conditional on line 7, the expression will
be evaluated as falsey, causing the code on line 10 to execute. On line 10,
the String `"interview"` is passed as an argument to the `puts` method, causing
`interview` to be output and `nil` to be returned.

This example demonstrates the concept of truthiness, specifically that nil
will be evaluated as falsey in a conditional.


}}}


{{{  concepts

* indexed assignment is mutating
 - its actually syntactic sugar for a method defined on the calling object's
    class

* concatentation is mutating

* setters are mutating

* local variable scoping rules with blocks
 - Inner scope variables cannot be accessed in outer scope
 - Outer scope variables can be accessed in inner scope
 - peer scopes do not conflict

* local variable scoping rules with methods
 - the only way a method definition can access local variables is by passing
    them as arguments.
* variables as pointers
* variable shadowing

* pass by value
* pass by reference
* mutability

* truthiness 
 - every value apart from `false` and `nil` is considered truthy and evaluates
    as `true` in a boolean context



- always state the return value of `nil` when explaining what the output of
    puts is


- puts "hello"



}}}

{{{  explain method invocation

```ruby
puts "hello"

```

We are calling the `puts` method and pass it the String `"hello"` as an
argument. This invocation will output `hello` and return `nil`

}}}
{{{  explain loop iteration

```ruby
i = 10
loop do
  i -= 1
  break if i == 0
end
```

On line 2, we are calling the method `loop` and pass it a `do..end` block as an
argument. On line 3, we are reassigning the local variable `i` to the
return value of the `-` method called on the local variable `i` with the
integer `1` passed to it as an argument. 

We break out of the loop with the keyword `break` if the value that `i`
references is equal to `0`.

}}}

}}}
{{{   RUBY 119

* be familiar with Ruby syntax and operators

in order to pass the written exam, go through the following topics
and a) write about them and b) write code snippets demonstrating the topic

{{{  Strings

name = "will"

indexing: name[0] # => "w"
I can select substrings of a string by providing an index `0`


slicing: name[0,2] # => "wi"
or by providing both an index `0` and the desired length of the substring `2`


negative indexes: name[-3] # => "i"

in the same way that positive indexes start from the first 'letter'
and move to the right, negative indexes also start from the same position
but move to the left


assigning elements: name[0] = "B", name # => "Bill"

referencing a String by index returns the substring at the given index; 
assigning this to a new String is mutating

## METHODS
# querying: size, count, include?
# selection: [], slice 
# transformation: downcase, upcase, chars, concat,  replace, reverse, split, strip 

name = "will"

# chars -> ARRAY
    name.chars      # => ["w","i","l","l"]

# concat -> SELF(mutated)
    name.concat("iam") #=> "william"

# count -> INTEGER
    name.count("l")  # => 2

# downcase -> STRING
    name.downcase     # => "will"

# downcase! -> SELF(mutated)
    name.downcase!   # => "will"

# upcase -> STRING
    name.upcase         # => "WILL"

# upcase! -> SELF(mutated)
    name.upcase!        # => "WILL"

# freeze -> SELF
    name.freeze          # => "will"

# include? -> BOOLEAN
    name.include?("W") # => false

# replace ->  SELF(mutated)
    name.replace("WILL") # => "WILL"

# reverse -> STRING
    name.reverse           # => "lliw"

# reverse! -> SELF(mutated)
    name.reverse!           # => "lliw"

# size -> INTEGER
    name.size                 # => 4

# slice -> STRING
    name.slice(0,1)          # => "w"

# slice! -> STRING
    name.slice!(0,1)        # => "w" ( name mutated to "ill")

# split -> ARRAY
    name.split("i")          # => ["w", "ll"]

# strip -> STRING
    name.strip               # => "will"

# strip! -> SELF or NIL ( NIL if no modifications are made )
    name.strip!             # => "will"

}}}
{{{  Arrays 

letters = ["a","b","c"]

indexing                letters[1] #=> "b"
slicing                 letters[0,3] #=> ["a","b","c"]
negative indexes        letters[-1] #=> "c"
assigning elements      letters[0] = "z"

# querying: all? any? include?
# selection: fetch, first, last, slice, select
# transformation: join, reverse, shift, pop, push, map, partition, sort, unshift

# all? -> BOOLEAN
    does the block return TRUE for all elements?
    letters.all? { |letter| letter.size == 1 }

# any? -> BOOLEAN
    does the block return TRUE for at least one element?
    letters.any? { |letter| letter == "a"}

# each -> SELF
    iterate through SELF, passing each element to a block

# each_with_index -> SELF
    iterate through SELF, passing each element to a block and its index

# each_with_object -> OBJECT
    iterate through SELF, passing each element and the given object to a block
    
# fetch -> ELEMENT
    returns the element at offset index
    letters.fetch(0) #=> "a"

# first -> ELEMENT
    returns first element of SELF
    letters.fetch #=> "a"

# include? -> BOOLEAN
    if argument exists in SELF, returns TRUE; false otherwise
    letters.include?("d")  #=> false

# join -> STRING
    returns the STRING that is formed by concatenating each element
    letters.join        #=> "abc"

# last -> ELEMENT
    returns the last element of SELF
    letters.last        #=> "c"

# map -> ARRAY
    returns a new array with the return values of the block
    letters.map { |letter| letter.upcase }   #=> ["A","B","C"]

# map! -> SELF
    changes each element of SELF to the return values of the block; returns SELF
    letters.map! { |letter| letter.upcase }   #=> ["A","B","C"]
    
# partition -> ARRAY
    divided = letters.partition { |letter| letter == "a" }
    divided # => [["a"],["b","c"]]

# pop -> ELEMENT
    removes and returns LAST element
    letters.pop     # => "c"
    letters         # => ["a","b"]

# push -> SELF
    appends argument to end of SELF; returns SELF
    letters.push("d") # => ["a","b","c","d"]

# reverse -> ARRAY
    letters.reverse # => ["c","b","a"]

# reverse! -> SELF
    letters.reverse! # => ["c","b","a"]

# select -> ARRAY
    return an array of elements for which the block returns TRUE
    think of it as "subset"
    letters.select { |letter| letter == "a" }   # => ["a"]

# select!   changes SELF to the defined sub-set defined
    letters.select! { |letter| letter == "a" }   # => ["a"]
    letters                             # => ["a"]
# shift -> ELEMENT(s)
    removes and returns leading elements
    letters.shift(2)        # => ["a","b"]
    letters                 # => ["c"]
# slice -> ELEMENT, or ELEMENTs
    when a single integer index argument is provided, returns the element
    when two integer arguments are provided, returns an ARRAY with element(s)
    letters.slice(0)        # => "a"
    letters.slice(0, 1)     # => ["a"]

# slice! -> returns sub-ARRAY removed from SELF; similar to pop
    returns an element or array, depending on number of arguments
    letters.slice!(0)       # => "a"
    letters.slice!(0,1)     # => ["a"]

# sort -> ARRAY
    without a block; returns an array whose elements are from SELF, sorted
    with a block; returns an array whose elements are from SELF, sorted using <=>
    letters.shuffle
    letters.sort    #=> ["a","b","c"]

# sort! -> SELF(mutated)
    returns SELF with elements sorted in place
    letters.sort!    #=> ["a","b","c"]

# unshift -> SELF(mutated)
    prepends the given objects to SELF
    letters.unshift("z")    #=> ["z","a","b","c"]

}}}
{{{  Hashes

person = { name: "Alice", age: 28 }

Indexing with...

string keys: remember that a `=>` is necessary when creating hash 
    person["name"]
 
symbol keys: remember that `symbol:` is shorthand, symbols start with `:`
    person[:name]    

# all? -> BOOLEAN
    does the block return true for all elements?
    person.all? { |key, value | value.is_a?(String) } #=> false

# any? -> BOOLEAN
    does the block return true for at least one element?
    person.any?

# empty? -> BOOLEAN
    is hash empty
    person.empty? #=> false

# include? -> BOOLEAN
    returns true if key is a key in SELF; false otherwise
    person.include?(:name)      #=> true

# each_key -> SELF
    calls the given block with each key, returns SELF
    person.each_key {|key| puts key } #=>  { name: "Alice", age: 28 }
    
# each_value -> SELF
    calls the given block with each value, returns SELF
    person.each_value {|value| puts value } #=>  { name: "Alice", age: 28 }

# key -> KEY / NIL
    returns the first key found in SELF with the given value, NIL if not found
    person.key("Alice") #=> :name

# key? -> BOOLEAN
    returns true if key is a key in SELF; false otherwise
    alias for include? 
    person.key?(:name)      #=> true

# keys -> ARRAY
    returns all keys of SELF in an array
    person.keys     #=> [:name, :age]

# map -> ARRAY
    returns an array of objects returned by the block
    person.map { |key, value| value * 2} #=> ["AliceAlice", 56]

# select -> HASH
    returns a new hash of entries for which the block returns a truthy value
    person.select {|key,value| value.is_a?(Integer)} #=> {:age => 28}

# select! -> SELF(mutated) / NIL
    returns SELF, whose entries are for which the block returns a truthy value
    returns NIL if no modifications are made to SELF
    person.select! {|key,value| value.is_a?(Integer)} #=> {:age => 28}
    
# value? -> BOOLEAN
    returns true if value is a value in SELF; false otherwise
    person.value?("Alice") #=> true

# values -> ARRAY
    returns an array containing all values in SELF
    person.values   #=> ["Alice", 28]

}}}
{{{  Integers

METHODS

# times: calls the given block SELF times with each integer in 0..SELF -1
    4.times { |num| puts num }
}}}
{{{  Iteration

iteration is the process of accessing every element of a collection
you can do this with a collection method such as `each` or `map` or you
can do this manually by creating a loop with an index that increments,
allowing traversal through the collection

break: exits the nearest loop
next: skips the rest of the current iteration and move onto the next one

}}}
{{{  shallow copy and deep copy
    
    both #dup and #clone create a "shallow copy" of a collection.
    The collections are separate, but share references to the same objects.
    If you iterate through one and have the elements make calls to mutating
    methods, both objects will be changed.

    The proper way of making changes to the copy is by calling a mutating
    method on the collection (#map!) instead of the individual elements that
    are common to both.

```
original = ['a','b','c']
copy = original.dup

copy.map! { |letter| letter.upcase }
print(*original)    # => abc
print(*copy)        # => ABC
```

The difference between #dup and #clone is that #clone will preserve the frozen
state of the original. That is, if the original is frozen, your copy will also
be frozen if you use #clone to create the copy.

}}}
{{{  method chaining

method chaining is when you combine methods together in a chain such that
the return value of one method is the calling object for the method that
immediately follows it to the right;

```
arr = ['a','b','c']
arr.first.upcase!
```

`first` returns the first element of arr, which is the String `'a'`
`upcase!` is called on this String object

}}}

{{{  nested data structures and nested iteration

}}}

}}}
