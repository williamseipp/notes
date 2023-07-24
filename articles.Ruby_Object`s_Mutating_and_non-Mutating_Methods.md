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
