

notes should ultimately turn into a study guide for exams and need to be:

* comprehensive: it covers all topics in the course
* structured: it is grouped in a way that's easy for me to understand & review
* definitive: answers are summarized in Launch School's formal definition
* practice: mock quiz questions appear next to their respective topic

notes should also aid in achieving higher levels of understandings according
to bloom's taxonomy:

* memory
* understanding: my explanation
* apply (create my own questions)
* analyze

_____________________________________________________________________________
# KEY CONCEPT: VARIABLE SCOPE

# Q: What is variable scope?
{{{ A: It is where a variable is available for use 

    A variable's scope is WHERE it can be referenced. A constant's scope is
    global. A method parameter's scope is only within the method.
}}}

# Q: What determines variable scope?
{{{ A: Variable scope is defined by a method definition or block

    Technically, where a variable is initialized determines its scope.
    For example, a variable `name` defined in a block restricts its access 
    to the inner scope of the block.
}}}

# Q: How does variable scope work in blocks?
{{{ A: Inner can access outer, but outer cannot access inner

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
{{{ examples : variable scope in blocks
```ruby

```
}}}
{{{ practice problems
}}}

_____________________________________________________________________________
