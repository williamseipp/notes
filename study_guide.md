## TOPICS

# HOW TO ANSWER
{{{  

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

# LANGUAGE
{{{ 

"The local variable `X` is initialized within the block, and so it is not
available in the outer scope."

"The `do/end` following invocation of the `loop` method defines a block
and the local variable `X` is initialized/reassigned within this block"

"When we reference the variable in the conditional"

}}}


## nil
## puts
## hashes?

# FIGURE THIS OUT
{{{   

Q: how does the book explain the process by which arguments to a method call
become bound to method parameter names

A: "We start by passing `var_name` to `method_name`; this binds the object
referenced by `var_name` (`object`) to `param_name`. `variable` and
`param_name` are now aliases for the object.

We start by passing `s` to `fix`; this binds the String represented by
`'hello'` to `value`. In addition, `s` and `value` are now aliases for the
String.

A: read the pass-by-value / reference articles as they go over this method
passing many times (ruby object's mutating and non-mutating methods)
[https://launchschool.medium.com/ruby-objects-mutating-and-non-mutating-methods-78023d849a5f]

Q: how would i explain what is happening in the below example without going
over what each iteration of the loop does when its perfectly clear what is
happening?

```ruby i = 3 loop do puts str i -= 1 break if i == 0 end

```

Q: how do i refer to the `break if`? Is this a conditional statement?

A:

Q: how do i refer to the `i == 0`? What words would the book use to describe
the entire line `break if i == 0`?

A: 

}}}

# OPERATORS
{{{ 

The expressions or values that an operator uses are its **operands**
`a + b` is `a.+(b)`

# arithmetic
# comparison
==
!=
<, >, <=, >=, <=>

# assignment
=
+=
-=
*=
/=      divides left operand with right and assigns result to left
%=
**=

# parallel assignment
a, b, c = 10, 20, 30

# logical
&&
||
!
!!
# ternary
?:

# string
`first_name + ' Seipp` +  concatenation
`'hello' *3`  returns a new String containing integer copies of itself 

# precedence table
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

# VARIABLES
{{{ 
constant names
initialization & reassignment
as pointers
variable scope
varible shadowing
}}}

# METHODS
{{{ 
definitions
invocation
implicit and explicit return values
side effects
pass-by-reference vs value
call stack
mutating


}}}


# EXPRESSIONS AND RETURN
{{{ 
}}}


# CONDITONALS & LOOPS
{{{ 


for


while


until

unless


}}}

# MUTABILITY
{{{ 
mutability 
& 
immutability, 
constants
}}}

# BOOLEANS vs TRUTHINESS
{{{ 
}}}

# STRINGS
{{{ 
string interpolation
methods
}}}


# ARRAYS
{{{ 
properties
methods
}}}


{{{ use correct terminology

```ruby
a = 'hello'
b = a
a = 'goodbye'
```
On line 1, the local variable `a` is initialized to the string 'hello'
On line 2, the local variable `b` is initialized to the same string
variable `a` is referencing.
On line 3, the local variable `a` is reassigned to the string 'goodbye'

```ruby
def example(str)
  i = 3
  loop do
    puts str
    i -= 1
    break if i == 0
  end
end

example('hello')
```
**What does this code output and why? What principle is demonstrated here?**

This code outputs
`hello`
`hello`
`hello`

The code consists of a method definition for `example` and this method is
invoked on line 10 with the string `'hello'` passed as an argument. The method
`example` uses this 

}}}


{{{ example 1
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
