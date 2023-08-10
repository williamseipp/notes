{{{ variable scope 

### Variable scope 

1. Inner can access outer: Method definitions access variables in 
    an outer scope by passing them in as arguments. 
    Blocks don't need to do this.

```ruby
morning_greeting = "mornin'"

def greet(phrase)
  puts "#{phrase}!"
end

1.times do
  puts "#{morning_greeting}"
end
```

2. Outer cannot access inner: Variables created inside blocks or 
    method definitions cannot be used outside of the inner scope. 

```ruby
loop do
  a = 1
  break
  end
puts a  # undefined error
```

3. Variable shadowing: When a block parameter and an outer variable
    have the same name, the block parameter will always be used.

```ruby
n = 10

[1, 2, 3].each do |n|
  puts n
end
# 1 2 3
```

4. Some other things to remember:

* a block can access AND change outer scope variables
* nested blocks have nested scopes
* a block within a method definition retains block scoping rules
* constants can be referenced from anywhere:

```ruby

# method definition using outer without passing as argument
USERNAME = 'Batman'

def authenticate
  puts "Logging in #{USERNAME}"
end

authenticate    # => Logging in Batman

# block using outer 
1.times do
  puts "I love #{USERNAME}!"  # => I love Batman!
end

# outer accessing inner!
loop do
  MY_TEAM = "Phoenix Suns"
  break
end

puts MY_TEAM    # => Phoenix Suns

}}}
{{{ pass by reference value
### pass by reference: address of the object

    When dealing with a mutable object, the object's address
    is passed to the method, and the method parameter is an
    alias to the passed object


### pass by value: address of object's clone

    When dealing with an immutable object, this object is copied
    and its address is passed to the method.


### pass by reference value: copy of object's address

}}}
