## TOPICS

{{{   FIGURE THIS OUT

Q: how does the book explain the process by which arguments to a method call
    become bound to method parameter names

A: "We start by passing `var_name` to `method_name`; this binds the object
    referenced by `var_name` (`object`) to `param_name`.
    `variable` and `param_name` are now aliases for the object.

We start by passing `s` to `fix`; this binds the String represented by
`'hello'` to `value`. In addition, `s` and `value` are now aliases for the
String.

A: read the pass-by-value / reference articles as they
    go over this method passing many times
(ruby object's mutating and non-mutating methods)
[https://launchschool.medium.com/ruby-objects-mutating-and-non-mutating-methods-78023d849a5f]

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
mutating


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

When this code runs, what values do `s` and `t` have and why?

**my answer**
`s`  is assigned the string `'hello'`
and this string is passed to the `fix` method as an argument
The method definition has a parameter `value`; this references the
same string that `s` references; the String `'hello'`

So, when the mutating method `upcase!` is called, the calling object
is the String `'hello'` because value references it. This string is
now `'HELLO'`, until the next line where it calls the `concat` method
on itself to append a `'!'`, resulting in `HELLO!`
The last line `value` returns the reference to the mutated string, where
on the last line the local variable `t` is assigned this reference. Both
`s` and `t` have the value of `HELLO!`

**book answer**
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
