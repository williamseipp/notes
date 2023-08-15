## TOPICS

{{{   FIGURE THIS OUT
Q: when talking about a method parameter, how
does the book explain how the method's argument
'becomes' the parameter?

A: read the pass-by-value / reference articles as they
    go over this method passing many times

Q: how would i explain what is happening in the below example
    without going over what each iteration of the loop does when
    its perfectly clear what is happening?

```ruby
  i = 3
  loop do
    puts str
    i -= 1
    break if i == 0
  end

```

Q: how do i refer to the `break if`? Is this a conditional statement?

A:

Q: how do i refer to the `i == 0`? What words would the book use to describe
    the entire line `break if i == 0`?

A: 

}}}

{{{ operators
numerical
string
conditional
logical
precedence
}}}

{{{ variables
constant names
initialization & reassignment
as pointers
variable scope
varible shadowing
}}}

{{{ method
definitions
invocation
implicit and explicit return values
side effects
pass-by-reference vs value
call stack
}}}

{{{ expressions and return
}}}


{{{ conditionals & loops
}}}

{{{ mutability & immutability, constants
}}}

{{{ boolean vs truthiness
}}}

{{{ strings
string interpolation
methods
}}}

## nil
## puts
## hashes?

{{{ arrays
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


