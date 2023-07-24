### Intro

    Variables and references can behave unexpectedly;
    learn how Ruby handles things.

### Conclusion

    *Variables are references to objects in memory.
    *Multiple variables can reference the same object; mutating the
      object will reflect in these multiple variables
    *Variable assignment changes the pointer; it does not mutate an object
    *There are object types that are immutable like numbers and Booleans
    *Attempting to change an immutable object doesn't work, but it might
      create a new object with a variable assignment.
    *Mutable objects can be mutated without creating a new object
    *Pass by value is for immutable objects, reference for everything else
    



### Variables and References

```ruby
greeting = "Hello"      # greeting.object_id => 26680
whazzup = greeting      # whazzup.object_id => 26680
# both variables point to same string

greeting.upcase!        # "HELLO"
whazzup                 # "HELLO"
```
>> mutating the string with one reference affects the other




### Reassignment

```ruby
greeting = 'Dude!'      # greeting.object_id => 168540
whazzup                 # => "HELLO"
whazzup.object_id       # => 26680
```
>> reassignment doesn't mutate the object, it only changes the pointer




### Immutable Objects

```ruby
a = 5                   # a.object_id => 11
b = 7                   # b.object_id => 15 
a = b                   # a.object_id => 15

b += 1                  # 8   b.object_id => 17
a                       # 7   a.object_id => 15
# a and b no longer point to same object; the += operator bound b
# to a new Integer
```
>> Simple assignment never mutates an immutable object




### Mutable Objects

    Most objects are mutable, either by setter methods or complex
    operations within a method.

```ruby
a = [1, 2, 3]
a[0] = 0            # calls setter method
a                   # [0, 2, 3]


a = %w(a b c)       # ["a", "b", "c"]
a.object_id         # 433220
a[0] = 'b'          # ["b", "b", "c"]
a.object_id         # 433220


class Dog
  def name=(new_name)
    @name = new_name
  end
end

dog = Dog.new
dog.name = "Dino"   # calls setter method for `name` attribute
```
>> Setter methods allow for explicit change of an object's value




### A Brief Introduction to Object Passing

    Whether a method can mutate an argument depends on its mutability
    and how the argument is passed

    pass by value: method receives a copy of the argument
    pass by reference: method receives the reference to the argument

    One is used by default




### Developing A Mental Model

```ruby
def increment(a)
  a = a + 1
end

b = 3
puts b                  # prints 3
puts increment(b)       # prints 4


def append(s)
  s << '*'
end

word = 'abc'
puts append(word)       # abc*
puts word               # abc*
```
>> Immutable objects in Ruby may be passed by reference but as they
>> can't change, the effect is that of "pass by value"

