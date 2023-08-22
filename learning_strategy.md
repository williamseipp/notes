

Notes should ultimately turn into a study guide for exams and need to be:

* comprehensive: it covers all topics in the course
* structured: it is grouped in a way that's easy for me to understand & review
* definitive: concept definitions and examples are provided by Launch School
* practice: get good at answering exam questions by drilling them here

_____________________________________________________________________________
# note-taking procedure

1. As I read through the material, I summarize concepts into `question /answer`
   pairs. Distilling key concepts into discrete questions builds a complete
mental model. Recalling the `formal answer` that Launch School provides in the
course material is important as I will cite them directly in exams. Summarizing
them in my own words helps me adopt that level of precision and clarity in the
way that I think and talk.

2. I group these `question / answer` pairs together after finishing a lesson
   and create a heading that describes the concept being demonstrated, and a
table of contents for all concepts covered. These can change later as I review
the study guide supplied at the end of the course.

3. I then provide my own code `examples` beneath question / answer pairs to
   APPLY my understanding of a concept. 

4. Next, I explain what is happening in these examples with precise language
   and describe both the output and the relevant syntax

5. Then, I include practice questions covering all topics from various
   sources and place them at the bottom of the notes. 

6. Lastly, I drill these and treat them like questions on the exam; timing them
   and writing down how long it took next to the folded answer. I do this until
   it becomes easy and enjoyable.
_____________________________________________________________________________


# TABLE OF CONTENTS:
# VARIABLE SCOPE
# VARIABLE SHADOWING
# VARIABLE AS POINTERS
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
{{{  Demonstrate an example of variable scoping rules in methods

    my_name = "William"

    def say_name
      puts my_name  # => my_name cannot be referenced inside the scope of a
    end             # => method definition

    say_name        # => error

}}}


# VARIABLE SHADOWING
# VARIABLE AS POINTERS


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

