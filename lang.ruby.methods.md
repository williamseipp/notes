{{{ definition

}}}
{{{ invocation

}}}
{{{ implicit vs explicit return values

}}}
{{{ parameters vs arguments

}}}
{{{ output vs return values, side effects

}}}

{{{  pass by reference or value?

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
}}}
{{{  mutating methods
### Introduction
    
    We discuuss methods, and how they can be mutating or not-mutating
    for certain arguments. Assignment and concatenation are covered.



### Conclusion
    
    * A method that does not mutate its arguments or caller is non-mutating
    * A method that mutates some of them is mutating ( with those objects )
    * Assignment acts like a non-mutating method; it alters the binding
    * Indexed assignment and setter operations are mutating
    * #<< operator mutates
    * += operator does not mutate



### Mutating and Non-Mutating Methods
    It is important to distinguish between objects when discussing what
    methods mutate; the caller and the arguments

```ruby

food = "pizza"
order = "chicken, soda"
order.sub!("chicken", food)     # => "pizza, soda"
```
>> String#sub! mutates the calling string, not the arguments



### Non-Mutating Methods
    * Most common methods don't mutate their arguments or the caller
    * Some mutate the caller
    * Only a few mutate the arguments
    * A mutating method cannot mutate an immmutable object



### Assignment is Non-Mutating

```ruby
s = 'hello'         # s.object_id => 21400
s += ' world'       # s.object_id => 49860
```
>> += returns a newly-created string; it doesnt mutate the original



### Mutating Methods

```ruby
s = ' heyo '        # s.object_id => 74060
s.strip!            # s.object_id => 74060
s                   # 'heyo'
```
>> Most mutating methods end with a '!'



### Indexed Assignment is Mutating

```ruby
str[3] = 'x'
array[5] = Person.new
hash[:age] = 25

a = [3, 5, 8]           # a.object_id => 40500
                        # a[1].object_id => 11
a[1] = 9                # a[1].object_id => 19
```
>> objects that support indexed assignment ( like arrays )
>> retain their reference when an element's reference is changed



### Concatenation is Mutating


```ruby
s = 'hello'         # s.object_id => 21380
s << ' world'       # s.object_id => 21380
```
>> same object, mutated value



### Setters are Mutating

```ruby

person.name = 'Bill'
person.age = 23
```
>> These setter methods belong to a class. As instance variables
>> already exist, these "assignments" mutate existing variables
>> to the method arguments provided
**note** this is nearly identical to indexed assignment

}}}
{{{ the call stack

}}}
{{{

}}}
{{{

}}}
{{{

}}}
{{{

}}}

