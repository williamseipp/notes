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
{{{   RUBY 119 written

* be familiar with Ruby syntax and operators

in order to pass the written exam, go through the following topics
and a) write about them and b) write code snippets demonstrating the topic

{{{  Strings

name = "will"

indexing: name[0] # => "w"
slicing: name[0,2] # => "wi"
negative indexes: name[-3] # => "i"
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

string keys: remember that a `=>` is necessary when creating hash 
symbol keys: remember that `symbol:` is shorthand, symbols start with `:`

# querying: all? any? empty? include? key? value?
# selection: select
# transformation: map

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

# each -> SELF
    calls the given block with each key and value, returns SELF
    person.each { |key,value| puts "#{key} and #{value}"}

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

    arr = [[1,3], [2]]
    arr[0][1] = 5
    # => [[1,5], [2]]

    arr.each do |array|
      array.each { |number| puts number }
    end
}}}

{{{  sorting

    We can compare two values OF THE SAME TYPE with the
    `<=>` operator. It will return -1,0,1 depending on
    which object is less than the other. However, if the two
    objects are of different types, then NIL will be returned
    instead.

```
1 <=> 2     # => -1
2 <=> 1     # => 1
1 <=> 1     # => 0
1 <=> 'a'   # => nil
```

    If we attempt to sort a collection of different types, an exception
    will be thrown when the objects of different types are compared.

strings are sorted by ASCII values

    ["a", "A", "!"].sort # => ["!", "A", "a"]

when strings are equivalent, the shorter one comes first

    ['arc', 'bat', 'cape', 'ants', 'cap'].sort
    # => ["ants", "arc", "bat", "cap", "cape"]

we can also define our own criteria for sorting by passing a block

    [2,5,3,4,1].sort do |a,b|
      b <=> a
    end
    # => [5,4,3,2,1]

}}}


{{{  PRACTICE PROBLEMS

arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.map! do |char|  char.upcase
end
puts arr1 
puts arr2
}}}


}}}
{{{   RUBY 119 interview

be able to:

work with arrays and hashes
iterate over an array, string, or hash values
* precise control over iteration flow; can you use `break` and `next`?
* manipulate arrays and hashes.
    can you reverse an array without using `Array#reverse`?
    can you select an element out of an array if its index is a fib number?
    write a method that removes every other element out of an array

{{{ reverse an array without using #reverse

# method1: use #sort but pass a block with block parameters in reverse order (b,a)
    p arr.sort {|a,b| b <=> a }
# method2: iterate backwards through the array and fill returned array iteratively
    new_arr = []
    arr = [1, 2, 3]
    # -1, -2, -3
    index = -1
    loop do
      new_arr << arr[index]
      break if index.abs == arr.size
      index -= 1
    end

# method3: if I'm allowed to mutate the argument, #pop elements of the argument
    new_arr = []
    arr.size.times { new_arr << arr.pop }
}}}
{{{ select an element out of an array if its index is a fib number?
    fib_10 = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
    arr = [10, 4, 5, 2, 21, 1]
    p arr.select { |number| fib_10.include?(number) }
}}}
{{{ write a method that removes every other element out of an array

    fib_10 = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

    fib_10.select!.with_index do |number, index|
      index.even?
    end
}}}


DONT "let me just run it and see what it will do"

tangible steps ( PEDAC )

# BLUEPRINT
SLOWLY read the problem. 
Re-write the problem into a series of simpler statements
- point 1
- point 2
- input
- output




}}}



## RB120 study guide

    do I need to go over element setter and getters? .[](2) .[]=(2, "third")

    dont I need to go over how super works?

{{{    Example of Good Answer
```ruby






class Dog
  def initalize(name)
    @name = name
  end

  def say_hello
    puts "Woof! My name is #[@name]."
  end
end
```

QUESTION: Describe this code.

ANSWER: 
    
    "This code defines a `Dog` class with two methods:"

    The #initialize method that initializes a new Dog object, 
    which it does by assigning the instance variable @name to the 
    dog's name specified by the argument. 

    The #say_hello instance method which prints a message that includes
    the dog's name in place of #{@name}. 
    #say_hello returns nil."








}}}


{{{     Inheritance  
The concept of inheritance is used in Ruby where a class inherits the behaviors
of another class, referred to as the superclass. This gives Ruby programmers
the power to define basic classes with large reusability and smaller subclasses
for more fine-grained, detailed behaviors.
}}}
{{{     Encapsulation
Encapsulation is hiding pieces of functionality and making it unavailable to
the rest of the code base. It is a form of data protection, so that data cannot
be manipulated or changed without obvious intention. It is what defines the
boundaries in your application and allows your code to achieve new levels of
complexity. Ruby, like many other OO languages, accomplishes this task by
creating objects, and exposing interfaces (i.e., methods) to interact with
those objects.

}}}
{{{     Polymorphism
Polymorphism is the ability for different types of data to respond to a common
interface. For instance, if we have a method that invokes the move method on
its argument, we can pass the method any type of argument as long as the
argument has a compatible move method. The object might represent a human, a
cat, a jellyfish, or, conceivably, even a car or train. That is, it lets
objects of different types respond to the same method invocation.

    Polymorphism is implemented in Ruby in the following ways:

    Inheritance: classes inherit behaviors from another class

    Modules: By mixing modules with classes, we can have different
      objects respond to common methods defined in the module

}}}


{{{     what are classes and objects?

Classes can be thought of as definitions for objects and objects themselves
are actual examples or "instantiations" of that class.

```ruby
class Person
  def initialize(name)
    @name = name
  end
end

me = Person.new("Will")
```
}}}
{{{     how would you create a setter / getter without using attr_*
```ruby
class Person
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def change_name(new_name)
    @name = new_name
  end
end

me = Person.new("Will")
me.name   # => Will
me.change_name('Bill')
me.name   # => Bill

```

}}}
{{{     what are instance variables and what is their scope?

Instance variables are variables that persist as long as the object instance
exists. It is scoped at the object level, allowing access in instance
methods. They can be referenced even when uninitialized and will return nil,
unlike an uninitialized local variable which will result in an exception.
Instance variables are not inherited; we must first call the method that
initalizes the instance variable. Only then can an object access this instance
variable.
}}}
{{{     what are class variables and what is their scope?

Class variables are variables that belong to the class and not any instance. 
They are available to all sub-classes and instances of them. However, because
class variables are shared between subclasses and superclasses, the value of
the class variable in the subclass overrides the values in the superclass.
}}}
{{{     what are constants and what is their scope?


    Constants are variables that do not change. Their scope is lexical, meaning
    in the surrounding code. If it isn't found lexically, Ruby will search through
    the inheritance heirarchy of the structure that references the constant, NOT
    of the calling object. We can see this play out with the reference to the
    constant `WHEELS` in `Vehicle#maintenance`


```ruby
module FourWheeler
  WHEELS = 4
end

class Vehicle
  def maintenance
    "Changing #{WHEELS} tires."  # Ruby will search lexically, then search
  end                            # in Vehicle's ancestors
end

class Car < Vehicle
  include FourWheeler

  def wheels
    WHEELS
  end
end

car = Car.new
puts car.wheels        # => 4
puts car.maintenance   # => NameError: uninitialized constant Vehicle::WHEELS
```

}}}
{{{     Referencing and setting instance variables vs using getters/setters

It's just a good idea; defining how instance variables are retrieved using
a getter allows for change later on.
}}}    

# METHODS
{{{     Instance methods vs Class methods

what about them?

instance methods are methods that are called by instances of the class
class methods are methods that are called by the class.
Neither type of method can be used by the other.
}}}    
{{{     What is method access control? Demonstrate private vs protected
Method access control is the concept of restricting access to methods defined
in a class. It is implemented using the words `public`, `private`, and
`protected`

`public` methods comprise the class interface and define how other classes &
objects will interact with this class & its objects

`private` methods cannot be called outside of the class.

`protected` methods cannot be called outside of the class.

# private vs protected demo with Student and Person

```ruby
class Person
  protected

  def video_feed?
    true
  end
end

class Student
  attr_accessor :name, :track

  def initialize(name, track)
    @name = name
    @track = track
  end

  def public_disclosure    # invokes private method
    puts "Moving on to the next course!" if passed_exam?
  end

  def study_together(other_student)   # invokes protected method
    puts "Hi" if other_student.video_feed?
  end

  protected

  def video_feed?
    [true, false].sample
  end

  private

  def passed_exam?
    true
  end
end

person = Student.new("Alice", "Ruby")
friend = Student.new("Bob", "Ruby")
stranger = Person.new

person.public_disclosure
person.study_together(friend)
person.study_together(stranger)


```

}}}
{{{     Calling methods with "self"

If we didn't have `self` to reference the calling object, these variable
assignments would be to local variables and not calls to the "attr"
methods!

```ruby
attr_accessor :name, :age

def change_info(name, age)
  self.name = name
  self.age = age
end
```
}}}
{{{     More about "self"
```ruby


class Person
  def self.population       # self refers to `Person`
    puts self               # self refers to `Person`
  end

  def greet                 # instance method
    puts "I am #{self}"     # self refers to calling object
  end
end

Person.population
Person.new.greet

```

}}}
{{{     Fake operators and equality
    
    What looks like an operator is actually a method call. An example of this
    is ==.

    While == is a method defined by the BasicObject class, each class should
    define the == method to specify the value to be compared. The same holds
    true if we want to compare objects.
```ruby
def ==(other)
  name == other.name        # relying on String#== here
end

def >(other_person)
  age > other_person.age    # relying on Integer#> here
end
```

    

}}}
{{{     Working with collaborator objects
    
    Objects that are stored as state within another object are called
    "collaborator objects" because they work together with the class they
    are associated with.

    Collaboration is a "has-a" relationship; a library has books
    Inheritance is a "is-a" relationship; a dictionary is a book

}}}



{{{     SPOT problems
```ruby








1.
class Person
  attr_reader :name
  
  def set_name
    @name = 'Bob'
  end
end

bob = Person.new
p bob.name


# What is output and why? What does this demonstrate about instance variables
# that differentiates them from local variables?

# `nil` is output because the instance variable for `bob` has not yet been
# initialized. While instance variables are usually initialized to some value
# with the call to #initialize, this example does not. This demonstrates that 
# unlike local variables that must have a value, instance variables may be nil

2.
module Swimmable
  def enable_swimming
    @can_swim = true
  end
end

class Dog
  include Swimmable

  def swim
    "swimming!" if @can_swim
  end
end

teddy = Dog.new
p teddy.swim   


# What is output and why? What does this demonstrate about instance variables?

# Nothing is output because the `@can_swim` instance variable is nil, preventing
#     the method `swim` method from returning a string. The instance variable
#     `@can_swim` is only set to true if the `enable_swimming` method is invoked
#     by an instance of the class. This demonstrates that instance variables 
#     are nil unless they are set to some other value.

3. 
module Describable
  def describe_shape
    "I am a #{self.class} and have #{SIDES} sides."
  end
end

class Shape
  include Describable

  def self.sides
    self::SIDES
  end
  
  def sides
    self.class::SIDES
  end
end

class Quadrilateral < Shape
  SIDES = 4
end

class Square < Quadrilateral; end

p Square.sides 
p Square.new.sides 
p Square.new.describe_shape 


# What is output and why? What does this demonstrate about constant scope? What
# does `self` refer to in each of the 3 methods above? 

The output is:
`4`
`4`
NameError

This demonstrates that if Ruby cannot resolve a constant by searching in the
    lexical scope, it will traverse up the inheritance heirarchy of the
    structure that references the constant, in this case the class `Square`.

    The method call `describe_shape` was referenced within a module, so the
    name was unable to resolved and an error was thrown as a result.

    In the instance method `#sides`, `self` refers to the calling object that
    was created. In the class method `#sides`, `self` refers both to the class
    `Shape` after the keyword `def` and within the method body, `self` refers
    to the class of the calling object. In `describe_shape`, `self` refers to
    the calling object.

4.
class AnimalClass
  attr_accessor :name, :animals
  
  def initialize(name)
    @name = name
    @animals = []
  end
  
  def <<(animal)
    animals << animal
  end
  
  def +(other_class)
    animals + other_class.animals
  end
end

class Animal
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
end

mammals = AnimalClass.new('Mammals')
mammals << Animal.new('Human')
mammals << Animal.new('Dog')
mammals << Animal.new('Cat')

birds = AnimalClass.new('Birds')
birds << Animal.new('Eagle')
birds << Animal.new('Blue Jay')
birds << Animal.new('Penguin')

some_animal_classes = mammals + birds

p some_animal_classes 


# What is output? Is this what we would expect when using `AnimalClass#+`? If
# not, how could we adjust the implementation of `AnimalClass#+` to be more in
# line with what we'd expect the method to return?


5.
class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def change_info(n, h, w)
    name = n
    height = h
    weight = w
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end
end


sparky = GoodDog.new('Spartacus', '12 inches', '10 lbs') 
sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info 

# => Spartacus weighs 10 lbs and is 12 inches tall.
# We expect the code above to output `”Spartacus weighs 45 lbs and is 24 inches
#tall.”` Why does our `change_info` method not work as expected? #



6.
class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end
  
  def change_name
    name = name.upcase
  end
end

bob = Person.new('Bob')
p bob.name 
bob.change_name
p bob.name


# In the code above, we hope to output `'BOB'` on `line 16`. Instead, we raise
# an error. Why? How could we adjust this code to output `'BOB'`? 

7.
class Vehicle
  @@wheels = 4

  def self.wheels
    @@wheels
  end
end

p Vehicle.wheels                             

class Motorcycle < Vehicle
  @@wheels = 2
end

p Motorcycle.wheels                           
p Vehicle.wheels                              

class Car < Vehicle; end

p Vehicle.wheels
p Motorcycle.wheels                           
p Car.wheels     


# What does the code above output, and why? What does this demonstrate about
# class variables, and why we should avoid using class variables when working
# with inheritance?

8.
class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class GoodDog < Animal
  def initialize(color)
    super
    @color = color
  end
end

bruno = GoodDog.new("brown")       
p bruno


# What is output and why? What does this demonstrate about `super`?

9.
class Animal
  def initialize
  end
end

class Bear < Animal
  def initialize(color)
    super
    @color = color
  end
end

bear = Bear.new("black")        


# What is output and why? What does this demonstrate about `super`? 

10.
module Walkable
  def walk
    "I'm walking."
  end
end

module Swimmable
  def swim
    "I'm swimming."
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

module Danceable
  def dance
    "I'm dancing."
  end
end

class Animal
  include Walkable

  def speak
    "I'm an animal, and I speak!"
  end
end

module GoodAnimals
  include Climbable

  class GoodDog < Animal
    include Swimmable
    include Danceable
  end
  
  class GoodCat < Animal; end
end

good_dog = GoodAnimals::GoodDog.new
p good_dog.walk


# What is the method lookup path used when invoking `#walk` on `good_dog`?

11.
class Animal
  def eat
    puts "I eat."
  end
end

class Fish < Animal
  def eat
    puts "I eat plankton."
  end
end

class Dog < Animal
  def eat
     puts "I eat kibble."
  end
end

def feed_animal(animal)
  animal.eat
end

array_of_animals = [Animal.new, Fish.new, Dog.new]
array_of_animals.each do |animal|
  feed_animal(animal)
end


# What is output and why? How does this code demonstrate polymorphism? 
12.
class Person
  attr_accessor :name, :pets

  def initialize(name)
    @name = name
    @pets = []
  end
end

class Pet
  def jump
    puts "I'm jumping!"
  end
end

class Cat < Pet; end

class Bulldog < Pet; end

bob = Person.new("Robert")

kitty = Cat.new
bud = Bulldog.new

bob.pets << kitty
bob.pets << bud                     

bob.pets.jump 


# We raise an error in the code above. Why? What do `kitty` and `bud` represent
# in relation to our `Person` object?  

13.
class Animal
  def initialize(name)
    @name = name
  end
end

class Dog < Animal
  def initialize(name); end

  def dog_name
    "bark! bark! #{@name} bark! bark!"
  end
end

teddy = Dog.new("Teddy")
puts teddy.dog_name   


# What is output and why?

14.
class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

al = Person.new('Alexander')
alex = Person.new('Alexander')
p al == alex # => true


# In the code above, we want to compare whether the two objects have the same
# name. `Line 11` currently returns `false`. How could we return `true` on `line
# 11`? 


# Further, since `al.name == alex.name` returns `true`, does this mean the
# `String` objects referenced by `al` and `alex`'s `@name` instance variables
#     are the same object? How could we prove our case?


15.
class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    "My name is #{name.upcase!}."
  end
end

bob = Person.new('Bob')
puts bob.name
puts bob
puts bob.name


# What is output on `lines 14, 15, and 16` and why?

 16.
# Why is it generally safer to invoke a setter method (if available) vs.
# referencing the instance variable directly when trying to set an instance
# variable within the class? Give an example.


17.
# Give an example of when it would make sense to manually write a custom getter
# method vs. using `attr_reader`.

18. 
class Shape
  @@sides = nil

  def self.sides
    @@sides
  end

  def sides
    @@sides
  end
end

class Triangle < Shape
  def initialize
    @@sides = 3
  end
end

class Quadrilateral < Shape
  def initialize
    @@sides = 4
  end
end


# What can executing `Triangle.sides` return? What can executing `Triangle.new.sides` return? What does this demonstrate about class variables?


19.
# What is the `attr_accessor` method, and why wouldn’t we want to just add `attr_accessor` methods for every instance variable in our class? Give an example.
20.
# What is the difference between states and behaviors?
21. 
# What is the difference between instance methods and class methods?
22.
# What are collaborator objects, and what is the purpose of using them in OOP? Give an example of how we would work with one.
23.
# How and why would we implement a fake operator in a custom class? Give an example.
24.
# What are the use cases for `self` in Ruby, and how does `self` change based on the scope it is used in? Provide examples.
25.
class Person
  def initialize(n)
    @name = n
  end
  
  def get_name
    @name
  end
end

bob = Person.new('bob')
joe = Person.new('joe')

puts bob.inspect # => #<Person:0x000055e79be5dea8 @name="bob">
puts joe.inspect # => #<Person:0x000055e79be5de58 @name="joe">

p bob.get_name # => "bob"


 # What does the above code demonstrate about how instance variables are scoped?

26.
# How do class inheritance and mixing in modules affect instance variable scope? Give an example.
27.
# How does encapsulation relate to the public interface of a class?

28.
class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age  = a * DOG_YEARS
  end
end

sparky = GoodDog.new("Sparky", 4)
puts sparky


# What is output and why? How could we output a message of our choice instead?

# How is the output above different than the output of the code below, and why?

class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    @name = n
    @age  = a * DOG_YEARS
  end
end

sparky = GoodDog.new("Sparky", 4)
p sparky


29.
# When does accidental method overriding occur, and why? Give an example.
30.
# How is Method Access Control implemented in Ruby? Provide examples of when we would use public, protected, and private access modifiers.
31.
# Describe the distinction between modules and classes.
32.
# What is polymorphism and how can we implement polymorphism in Ruby? Provide examples.
33.
# What is encapsulation, and why is it important in Ruby? Give an example.
34.
module Walkable
  def walk
    "#{name} #{gait} forward"
  end
end

class Person
  include Walkable

  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "strolls"
  end
end

class Cat
  include Walkable

  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "saunters"
  end
end

mike = Person.new("Mike")
p mike.walk

kitty = Cat.new("Kitty")
p kitty.walk


# What is returned/output in the code? Why did it make more sense to use a module as a mixin vs. defining a parent class and using class inheritance?
35.
# What is Object Oriented Programming, and why was it created? What are the benefits of OOP, and examples of problems it solves?

36.
# What is the relationship between classes and objects in Ruby?
37.
# When should we use class inheritance vs. interface inheritance?
38.
class Cat
end

whiskers = Cat.new
ginger = Cat.new
paws = Cat.new


# If we use `==` to compare the individual `Cat` objects in the code above, will the return value be `true`? Why or why not? What does this demonstrate about classes and objects in Ruby, as well as the `==` method?
39.
class Thing
end

class AnotherThing < Thing
end

class SomethingElse < AnotherThing
end


# Describe the inheritance structure in the code above, and identify all the superclasses.
40.
module Flight
  def fly; end
end

module Aquatic
  def swim; end
end

module Migratory
  def migrate; end
end

class Animal
end

class Bird < Animal
end

class Penguin < Bird
  include Aquatic
  include Migratory
end

pingu = Penguin.new
pingu.fly


What is the method lookup path that Ruby will use as a result of the call to the `fly` method? Explain how we can verify this.
41.
class Animal
  def initialize(name)
    @name = name
  end

  def speak
    puts sound
  end

  def sound
    "#{@name} says "
  end
end

class Cow < Animal
  def sound
    super + "moooooooooooo!"
  end
end

daisy = Cow.new("Daisy")
daisy.speak


# What does this code output and why?

42.
class Cat
  def initialize(name, coloring)
    @name = name
    @coloring = coloring
  end

  def purr; end

  def jump; end

  def sleep; end

  def eat; end
end

max = Cat.new("Max", "tabby")
molly = Cat.new("Molly", "gray")


# Do `molly` and `max` have the same states and behaviors in the code above? Explain why or why not, and what this demonstrates about objects in Ruby.

43.
class Student
  attr_accessor :name, :grade

  def initialize(name)
    @name = name
    @grade = nil
  end
  
  def change_grade(new_grade)
    grade = new_grade
  end
end

priya = Student.new("Priya")
priya.change_grade('A')
priya.grade 


# In the above code snippet, we want to return `”A”`. What is actually returned and why? How could we adjust the code to produce the desired result?
44.
class MeMyselfAndI
  self

  def self.me
    self
  end

  def myself
    self
  end
end

i = MeMyselfAndI.new


# What does each `self` refer to in the above code snippet?

45.
class Student
  attr_accessor :grade

  def initialize(name, grade=nil)
    @name = name
  end 
end

ade = Student.new('Adewale')
p ade # => #<Student:0x00000002a88ef8 @grade=nil, @name="Adewale">


# Running the following code will not produce the output shown on the last line. Why not? What would we need to change, and what does this demonstrate about instance variables?
46.
class Character
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} is speaking."
  end
end

class Knight < Character
  def name
    "Sir " + super
  end
end

sir_gallant = Knight.new("Gallant")
p sir_gallant.name 
p sir_gallant.speak 


# What is output and returned, and why? What would we need to change so that the last line outputs `”Sir Gallant is speaking.”`? 

47. 
class FarmAnimal
  def speak
    "#{self} says "
  end
end

class Sheep < FarmAnimal
  def speak
    super + "baa!"
  end
end

class Lamb < Sheep
  def speak
    super + "baaaaaaa!"
  end
end

class Cow < FarmAnimal
  def speak
    super + "mooooooo!"
  end
end

p Sheep.new.speak
p Lamb.new.speak
p Cow.new.speak 


# What is output and why? 
48.
class Person
  def initialize(name)
    @name = name
  end
end

class Cat
  def initialize(name, owner)
    @name = name
    @owner = owner
  end
end

sara = Person.new("Sara")
fluffy = Cat.new("Fluffy", sara)


# What are the collaborator objects in the above code snippet, and what makes them collaborator objects?
49.
number = 42

case number
when 1          then 'first'
when 10, 20, 30 then 'second'
when 40..49     then 'third'
end


# What methods does this `case` statement use to determine which `when` clause is executed?

50.
class Person
  TITLES = ['Mr', 'Mrs', 'Ms', 'Dr']

  @@total_people = 0

  def initialize(name)
    @name = name
  end

  def age
    @age
  end
end

# What are the scopes of each of the different variables in the above code?
51.
# The following is a short description of an application that lets a customer place an order for a meal:

# - A meal always has three meal items: a burger, a side, and drink.
# - For each meal item, the customer must choose an option.
# - The application must compute the total cost of the order.

# 1. Identify the nouns and verbs we need in order to model our classes and methods.
# 2. Create an outline in code (a spike) of the structure of this application.
# 3. Place methods in the appropriate classes to correspond with various verbs.

52. 
class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    self.age += 1
  end
end


# In the `make_one_year_older` method we have used `self`. What is another way we could write this method so we don't have to use the `self` prefix? Which use case would be preferred according to best practices in Ruby, and why?
53.
module Drivable
  def self.drive
  end
end

class Car
  include Drivable
end

bobs_car = Car.new
bobs_car.drive


# What is output and why? What does this demonstrate about how methods need to be defined in modules, and why?
54.
class House
  attr_reader :price

  def initialize(price)
    @price = price
  end
end

home1 = House.new(100_000)
home2 = House.new(150_000)
puts "Home 1 is cheaper" if home1 < home2 # => Home 1 is cheaper
puts "Home 2 is more expensive" if home2 > home1 # => Home 2 is more expensive


# What module/method could we add to the above code snippet to output the desired output on the last 2 lines, and why?





```

}}}
{{{     SPOT interview questions
```ruby




# Problem by Natalie Thompson
class Person
  def initialize(name, job)
      @name = name
      @job = job
  end 

  def to_s
    "My name is #{@name} and I am a #{@job}"
  end
end

roger = Person.new("Roger", "Carpenter")
puts roger

# Add 1 line of code for the person class
# and 1 line of code in the initalize method. 


#Other than that don't change Person.

# "My name is Roger and I am a Carpenter"

















# ================================================================

# Problem received from Raul Romero
class Human 
    attr_reader :name

  def initialize(name="Dylan")
    @name = name
  end
  
end

puts Human.new("Jo").hair_colour("blonde")  
# Should output "Hi, my name is Jo and I have blonde hair."

puts Human.hair_colour("")              
# Should "Hi, my name is Dylan and I have blonde hair."




















# ================================================================

class Human  # Problem received from Raul Romero
  attr_reader :name 
  
  def initialize(name)
  end
 
end

gilles = Human.new("gilles") 
anna = Human.new("gilles") 

puts anna.equal?(gilles) #should output true # 
puts anna + gilles # should output annagilles 


# ================================================================


#describe what the code below outputs and why from Joseph Ochoa

module Attackable
  def attack
    "attacks!"
  end
end

class Characters
  attr_accessor :name, :characters 
  
  def initialize(name) 
    #
    self.name 
    @characters = [] 
  end
  
  def display
    name
  end
  
  protected 
  attr_reader :name
  attr_writer :name
end

class Monster < Characters
  include Attackable
  
  def initialize(name)
    super
  end
end

class Barbarian < Characters
  def ==(other)
    if(super.self == super.self) # 
      super.self == super.self
    end
  end
end

conan = Barbarian.new('barb') 
rob = Monster.new('monst')
conan.characters << rob
p conan.display

# ================================================================

# From Joseph Ochoa
# give class Barbarian the functionality of the Monster instance attack method:
  # If you used class inheritance, now try doing it without class inheritance directly.
  # If you used modules, now try not using modules
  # If you used duck typing, now don't use duck typing 

class Monster
  def attack
    "attacks!"
  end
end

class Barbarian
  
end
    
# ================================================================

# Without adding any methods below, implement a solution; originally by Natalie Thompson, 
# this version by Oscar Cortes
class ClassA 
  attr_reader :field1, :field2
  
  def initialize(num)
    @field1 = "xyz"
    @field2 = num
  end
end

class ClassB 
  attr_reader :field1

  def initialize
    @field1 = "abc"
  end
end


obj1 = ClassA.new(50)
obj2 = ClassA.new(25)
obj3 = ClassB.new


p obj1 > obj2
p obj2 > obj3

# ========================================================================
# Unknown
class BenjaminButton 
  
  def initialize
  end
  
  def get_older
  end
  
  def look_younger
  end
  
  def die
  end
end

class BenjaminButton
end


benjamin = BenjaminButton.new
p benjamin.actual_age # => 0
p benjamin.appearance_age # => 100

benjamin.actual_age = 1
p benjamin.actual_age

benjamin.get_older
p benjamin.actual_age # => 2
p benjamin.appearance_age # => 99

benjamin.die
p benjamin.actual_age # => 100
p benjamin.appearance_age # => 0

# ========================================================================

# Originally by Natalie Thompson, this version by James Wilson
class Wizard
  attr_reader :name, :hitpoints
  
  def initialize(name, hitpoints)
    @name = name
    @hitpoints = hitpoints
  end  
  
  def fireball
    "casts Fireball for 500 damage!"
  end
  
end

class Summoner < Wizard
  attr_reader :souls
  
  def initialize(name, hitpoints)
    # only add one line here
    @souls = []
  end
  
  def soul_steal(character)
    @souls << character
  end
end

gandolf = Summoner.new("Gandolf", 100)
p gandolf.name # => "Gandolf"

valdimar = Wizard.new("Valdimar", 200)
p valdimar.fireball #=> "casts fireball for 500 damage!"

p gandolf.hitpoints #=> 100

p gandolf.soul_steal(valdimar) #=> [#<Wizard:0x000055d782470810 @name="Valdimar", @hitpoints=200>]

p gandolf.souls[0].fireball #=> "casts fireball for 500 damage!"


# ========================================================================

# LS Man...legend says LS Man first appeared in SPOT.
module Flightable
  def fly
  end
end

class Superhero    
  attr_accessor :ability
  
  def self.fight_crime
  end
  
  def initialize(name)
    @name = name
  end
  
  def announce_ability
    puts "I fight crime with my #{ability} ability!"
  end
end

class LSMan < Superhero; end

class Ability
  attr_reader :description

  def initialize(description)
    @description = description
  end
end

superman = Superhero.new('Superman')

p superman.fly # => I am Superman, I am a superhero, and I can fly!

LSMan.fight_crime 
# => I am LSMan!
# => I fight crime with my coding skills ability!
# ========================================================================

```


}}}
