## TOPICS

{{{ QUESTIONS TO ASK

**am I being too wordy, or is this level of detail appropriate for certain
questions?**

puts str
"The value of the variable `str` is passed as an argument to the method `puts`
  and the `hello` is output"

```ruby 
i = 3 

loop do 
  puts str 
  i -= 1 
  break if i == 0 
end
```


}}}

{{{ TERMINOLOGY
# "conditionals" 
if else

# branch
sequence of code that is executed conditionally

# break if
break statement

# i == 0
expression

}}}

{{{ HOW TO ANSWER

1. RUN the code
2. WRITE down output
3. COMMENT relevant lines in English 
4. ANSWER the question in this order:
    * HOW did input change?
    * WHAT is the result?
    * WHY did this happen?

**big question**
What level of detail is required for answering questions?

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

{{{ HOW TO SPEAK 

"The local variable `X` is initialized within the block, and so it is not
available in the outer scope."

"The `do/end` following invocation of the `loop` method defines a block
and the local variable `X` is initialized/reassigned within this block"

"When we reference the variable in the conditional"

Q: how does the book explain the process by which arguments to a method call
become bound to method parameter names

We start by passing `s` to `fix`; this binds the String represented by
`'hello'` to `value`. In addition, `s` and `value` are now aliases for the
String.

}}}

{{{ CONCEPTS TO REFERENCE

**variable scope**

**variable shadowing**

**pass by reference**

**mutating?**

**truthy**

**implicit return**

}}}
______________________________________________________________________________

{{{ OPERATORS

The expressions or values that an *operator* uses are *operands*

{{{ numeric             **  *   /   %   +   -   divmod

**
*
/
%
+
-
divmod
}}}

{{{ conditional         ==  !=  <   >   <=  >=  ? :

==
!=
<, >, <=, >=, <=>
}}}

{{{ assignment          +=  -=  *=

=
+=
-=
*=
/=      divides left operand with right and assigns result to left
%=
**=

# parallel assignment
a, b, c = 10, 20, 30
}}}

{{{ logical             !   &&  ||

&&
||
!
!!

# short-circuit evaluation
the && and || operators use short-circuit evaluation
the return value is always the value of the operand evaluated last

they can work with truthy values and return truthy values too!

foo = nil
bar = 'cooks'
is_ok = foo || bar          # => this expression doesn't return true or false!
is_ok # => 'cooks'

}}}

{{{ string

# string
+   concatenation: 
`first_name + ' Seipp`

*   returns a new String containing integer copies of itself 
`'hello' *3`  

}}}

{{{ precedence table
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

{{{ VARIABLES

{{{ local variable & constant names
}}}

{{{ 
initialization & reassignment
}}}

{{{ variables as pointers

}}}

{{{ variable scope & method definitions 
}}}

{{{ variable scope & blocks

}}}

{{{ variable shadowing

when you try to reference a local variable from within a block that has the
same name as a block parameter, you cannot reference it

name = 'will'
loop do |name|
  puts name
end

}}}

}}}

{{{ METHODS

## puts
returns nil

definitions
invocation
implicit and explicit return values
side effects
pass-by-reference vs value
call stack
mutating



}}}

{{{ EXPRESSIONS and RETURN

the return keyword explicitly returns a value within a method

def some_method
  return 42
end

}}}

{{{ CONDITONALS

for

unless

case statements


}}}

{{{ BOOLEANS vs TRUTHINESS
## nil
{{{
when used in an expression, nil will be **treated** as false and the following
branch will not be executed

```ruby
if nil
  puts "I encountered a nil"
end
```

}}}


}}}

{{{ LOOPS

while
do/2hil
until

}}}

{{{ MUTABILITY
mutability 
& 
immutability, 
constants
}}}
______________________________________________________________________________

{{{ NUMBERS
integers

floats

methods


------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
}}}

{{{ STRINGS

------------------------------------------------------------------------------
# string interpolation
requires "" strings
last_name = 'Seipp'
puts "Name's #{last_name}, Wiliam #{last_name}}"

------------------------------------------------------------------------------
# + 
returns a new String containing other_string concatenated to self
`'hello' + ' world'`


------------------------------------------------------------------------------
# * 
returns a new String containing multiple copies of self 
`puts "#{last_name*3}" => 'SeippSeippSeipp'`

------------------------------------------------------------------------------
# << 
concatenates object to self and returns self
first_name << last_name

------------------------------------------------------------------------------
# chomp 
returns a new string copied from self with trailing characters removed
first_name.chomp

------------------------------------------------------------------------------
# delete 
returns a new string copied from self without arguments
fruit = "apples, bananas, coconuts, oranges, pineapples"
fruit.delete('o')
fruit # => "apples, bananas, ccnuts, ranges, pineapples"

------------------------------------------------------------------------------
# sub 
returns a copy of self with the first occurence of the given pattern replaced

pets = 'cat cat dog'
pets.sub('cat', 'fish')
'fish cat dog'


------------------------------------------------------------------------------
# gsub
returns a copy of self with all occurence of the given pattern replaced

pets = 'cat cat dog'
pets.sub('cat', 'fish')
# =>'fish fish dog'

------------------------------------------------------------------------------
# downcase
returns a new string with all the lowercase characters in self
name = 'William'
name.downcase 
# => 'william'

------------------------------------------------------------------------------
# upcase
returns a new string with all the uppercase characters in self
name = 'William'
name.downcase 
# => 'WILLIAM'

------------------------------------------------------------------------------
# eql?
returns true if the object has the same length and content

name = 'William'
name.eql?('William')
# => true

------------------------------------------------------------------------------
# include?

returns true if self contains other_string
pets = 'cat cat dog'
pets.include?('dog')
# => true

------------------------------------------------------------------------------
# length
returns the number of characters in self. Alias for #size
name = 'Will'
name.length
# => 4

------------------------------------------------------------------------------
# to_i
returns the result of interpreting leading characters in self as as an integer
name = '23will'
name.to_i
# => 23


------------------------------------------------------------------------------



}}}

{{{ ARRAYS
properties
methods
}}}

{{{ HASHES

hash syntax

hash methods used in book
}}}

{{{ TYPE CONVERSION

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


how
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

