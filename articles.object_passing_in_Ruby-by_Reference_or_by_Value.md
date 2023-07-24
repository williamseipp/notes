### What is Object Passing?

Because nearly everything in Ruby is an object, when you
make "something" available to a method, you are making
some object available by passing it.

Consider the following when thinking about the topic:

* the caller of a method call is an implied argument
* return values are passed back to the caller
* objects passing to/from methods include blocks,procs, and lambdas



### Evaluating Strategies

Ruby uses "strict evaluation" which means that expressions are
evaluated and converted to an object before being passed along to
a method.



### Why is the Object Passing Strategy Important?

```ruby

def append(x)
  x << 'b'
end

y = 'a'
append(y)
puts y              # prints ab
```
>> The strategy determines what the output is



### Pass by Value

```ruby

def plus(x, y)
  x = x + y
end

a = 3
b = plus(a, 2)
puts a              # 3
puts b              # 5
```
>> Ruby appears to pass by value when passing immutable values



### Pass by Reference

```ruby

def allcaps(value)
  value.upcase!
end

name = 'William'
allcaps(name)
puts name           # WILLIAM
```
>> Ruby appears to pass by reference; as value was an alias for name



### It's References All The Way Down

    Even when passing immutable objects like numbers, the reference
    is still being passed. 
    **passing a reference doesnt guarantee mutation**



### Pass by Reference Value

    Ruby is:
    Pass by reference value OR pass by value of the reference

    Essentially, ruby passes around copies of the references



### Final Mental Model

    * pass by reference value is most accurate, but hard to grok
    * pass by reference is accurate as long as you account for
        assignment and immutability
    * Ruby APPEARS to pass by value for immutable objects and
      pass by reference for mutable objects
### Wrap-up
