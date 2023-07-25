* use new lines to organize code

```ruby
name = ''

puts "Enter your name: "
loop do
  name = gets.chomp
  break unless name.empty?
  puts "That's an invalid name. Try again:"
end

puts "Welcome #{name}!"
puts "What would you like to do?"
```


* understand if a method returns a value, has side effects, or does both

```ruby
# side effect: displays something to the output
# returns: nil

def total(num1, num2)
  puts num1 + num2
end

# side effect: mutates the passed-in array
# returns: updated array

def append(target_array, value_to_append)
  target_array << value_to_append
end
```


* name methods appropriately

print_total should not return anything


* dont mutate the caller during iteration
```ruby

# this is ok
words = %w(scooby doo on channel two)
words.each {|str| str << '!'}
puts words.inspect        # => ["scooby!", "doo!", "on!", "channel!", "two!"]

# this is not ok
words = %w(scooby doo on channel two)
words.each {|str| words.delete(str)}
puts words.inspect        # => ["doo", "channel"]
```


* variable shadowing

choose appropriate block parameters

```ruby
name = 'johnson'

['kim', 'joe', 'sam'].each do |name|
  # uh-oh, we cannot access the outer scoped "name"!
  puts "#{name} #{name}"
end
```


* dont use assignment in a conditional

```ruby
# bad

if some_variable = get_a_value_from_somewhere
  puts some_variable
end

# good

some_variable = get_a_value_from_somewhere
if some_variable
  puts some_variable
end
```

even this is confusing...

```ruby
numbers = [1, 2, 3, 4, 5]

while num = numbers.shift       # while (num = numbers.shift)
  puts num
end
```


* Experience comes from not doing best practices; dont fixate on them

Being a good developer comes from experience, not searching for a list
