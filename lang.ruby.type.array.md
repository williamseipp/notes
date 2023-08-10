```ruby
children = ['William', 'James', 'Sarah', 'Tracey']
children[0] # => 'William'
```

An array is an ordered list of information

## properties of arrays

```ruby
info = ['will', 38, true ]

```
they can hold different types

food_log = [ ['fish','bagel bite', 'eggs'],['pizza'],['chicken', 'eggs'] ]
they can be nested

## comparing arrays

```ruby
will = ['male', 37]
william = ['male', 38]
will == william    # => false
```

Removes and returns trailing elements. When no argument is given and self is
not empty, removes and returns the last element

```ruby

count = [1, 2, 3]
count.pop    # => 3

count.pop(2) # => [1, 2]
```


```ruby
numbers = [1, 2]
numbers.push(3) #=> [1, 2, 3]
```

Appends trailing elements and returns self
**note** alias for `Array#append`

```ruby

family = ['will', 'bonnie', 'luna', 'mei']
family.size   # => 4
```

returns the count of elements in self
