

Notes should ultimately turn into a study guide for exams and need to be:

* comprehensive: it covers all topics in the course
* structured: it is grouped in a way that's easy for me to understand & review
* definitive: concept definitions and examples are provided by Launch School
* practice: get good at answering exam questions by drilling them here

_____________________________________________________________________________
# note-taking procedure

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
_____________________________________________________________________________


# TABLE OF CONTENTS:
# VARIABLES
# METHODS
# LOOPS
# PROBLEMS


# VARIABLE SCOPE

{{{  What is variable scope?

` It is where a variable is available for use in a program `

    A variable's scope is WHERE it can be referenced. A constant's scope is
    global. A method parameter can only be used within the scope of a method
}}}
{{{  What determines variable scope?  

` Variable scope is defined by a method definition or block `

    Technically, where a variable is initialized determines its scope.
    For example, a variable `name` defined in a block restricts its access 
    to the inner scope of the block.
}}}

{{{  Explain how variable scope works in blocks and methods

` Inner can access outer, but outer cannot access inner `

    Blocks can reference variables initialized outside the block, but
    variables initialized inside the block cannot be referenced outside the
    block

}}}
{{{  Demonstrate an example of variable scoping rules in blocks

    Inner scope can access variables initialized in an outer scope

    outer = 'will'
    loop do |n|
      puts outer
      break
    end

_____________________________________________________________________________
    outer cannot access inner

    loop do |n|
      inner = 'hello'
      break
    end

    puts inner      # => "undefined local variable or method 'inner' for main"

}}}
{{{  Examples... in methods

    my_name = "William"

    def say_name
      puts my_name  # => my_name cannot be referenced inside the scope of a
    end             # => method definition

    say_name        # => error

}}}

# METHODS
# LOOPS


# PROBLEMS
{{{  problem 1: variable shadowing

> What does the following code return? What does it output? Why? What concept
> does it demonstrate?

```ruby
a = "Hello"
b = a
a = "Goodbye"

puts a
puts b
```

The problem demonstrates the concept of variables as pointers. 
On line 1, the local variable `a` is assigned to `"Hello"`. On line 2, the
local variable `b` is also assigned to the String `"Hello"`... and so on

}}}
{{{  problem 2: method scope

> What does the following code return? What does it output? Why? What concept
> does it demonstrate?
}}}

