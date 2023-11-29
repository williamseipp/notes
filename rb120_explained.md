# OOP book
{{{   sections

{{{  classes and objects part 1

}}}
{{{  classes and objects part 2

    class methods are methods that can't be used by objects
```ruby
def self.class_method
  2
end ```

    class variables are variables that dont belong to any object

```ruby
class Person
@@buzzkill = 0
end ```

    constants are variables that you want to use inside your class
    while they shouldnt be defined inside the constructor method,
    they still need to be defined

```ruby
class Person
  HOME_PLANET = "Earth"
end 


    'self' refers to the calling object when used here, even though
    the name hasn't been set yet

class Dog
  GENUS = "Canis"
  attr_accessor :name
  def initialize(name)
    self.name = name    # refers to calling object
  end

  def self.genus        # refers to Class
    "#{GENUS}"
  end

  puts self             # self outside of a method refers to Class
end
```

}}}
{{{  Inheritance baby!

  protected methods cannot be invoked outside the class definition
    but can be invoked by methods of other objects

  when you choose method names, make sure the name doesn't
  belong to the class `Object` ( instance_of? send )
}}}
{{{  section

}}}

}}}
# overview of Classes and Objects 1
{{{  define a class and create objects. setters, getters, and modules
* define a class
* define a constructor with arguments
* create an object
* define setters and getters (dumb way & preferred)
* define an accessor
* define a module
}}}

# Classes and Objects 2
{{{  methods: instance, class, public, private, protected
* create a class method
* create a setter method using 'self' that isnt an accessor method
* create a method that returns self
* write a ::class_method and #instance_method
* define a class variable and return it
* create a constant for a class and reference it within a method
* override an already existing method like #to_s
* can instance variables be defined outside of #initialize?
* what is the difference between a public and private method?
* create a public method that calls a private method
* what is the difference between a protected method and a private one?
}}}

# Inheritance
{{{   method overriding, super, lookup path, Namespacing
* make a class inherit from a Parent class
* explain how method overriding works
* demonstrate the use of super within a method
* what does calling super(arg) do?
* what does calling super do?
* what does calling super() do?
* create a Truck and Car class that inherit from a Vehicle class.
   override the #initialize method of the Vehicle class to allow it
   to accept 2 arguments (year, bed_type) instead of one, but call on
   Vehicle.initialize to initialize the year
{{{   explanation of the use of super
  imagine that you want to create a child class has a nearly identical 
    method as the parent, but with added functionality
    
    `Vehicle.initialize(year) vs Truck.initialize(year, bed_type)`

    # dont do this
    class Truck

    def initialize(year, bed_type)
      @year = year
      @bed_type = bed_type
    end

    # do this

    class Truck
    def initialize(year, bed_type)
      super(year)
      @bed_type = bed_type
    end
}}}

* output the lookup path for a class; just the classes
* Cat > Animal > Object > BasicObject  (Object includes Kernel module)
* when searching through the lookup path, the Ruby interpreter searches
  through modules before the superclass: class > module > superclass

* What is Namespacing?
* create a module such that the following creates an object:
  `Transportation::Truck.new`

{{{    Daisy says moooooo   ( great example, study THIS!!)

```ruby
class Animal
  def initialize(name)
    @name = name
  end

  def speak
    puts sound
  end

  def sound
    "#{@name} says "
  end
end

class Cow < Animal
  def sound
    super + "moooooooooooo!"
  end
end

daisy = Cow.new("Daisy")
daisy.speak     # => Daisy says moooooooooooo!
```
}}}


}}}

# Accessor Methods
{{{    setters and getters again
* create a getter method such that the attribute is retrievable
  only inside the class   ( for internal use only )
* how can we share data between two instances of the same class type? 
* create a setter method that formats an argument before setting an
  attribute   ( capitalizing a name, for example)
* create a getter method that prefixes an attribute
* create a getter that doesn't return a reference to the instance variable

}}}

# Polymorphism

{{{   inheritance 

```ruby
class Animal
  def move
  end
end

class Fish < Animal
  def move
    puts "swim"
  end
end

class Cat < Animal
  def move
    puts "walk"
  end
end

# Sponges and Corals don't have a separate move method - they don't move
class Sponge < Animal; end
class Coral < Animal; end

animals = [Fish.new, Cat.new, Sponge.new, Coral.new]
animals.each { |animal| animal.move }
```
}}}
{{{   duck typing: wedding

```ruby
class Wedding
  attr_reader :guests, :flowers, :songs

  def prepare(preparers)
    preparers.each do |preparer|
      # case preparer
      # when Chef
      #   preparer.prepare_food(guests)
      # when Decorator
      #   preparer.decorate_place(flowers)
      # when Musician
      #   preparer.prepare_performance(songs)
      # end
      preparer.prepare_wedding(self)
    end
  end
end

class Chef
  def prepare_wedding(wedding)
    def prepare_food(wedding.guests)
  end

  def prepare_food(guests)
    # implementation
  end
end

class Decorator
  def prepare_wedding(wedding)
    decorate_place(wedding.flowers)
  end

  def decorate_place(flowers)
    # implementation
  end
end

class Musician
  def prepare_wedding(wedding)
    prepare_performance(wedding.songs)
  end

  def prepare_performance(songs)
    #implementation
  end
end

our_weddding = Wedding.new


```
}}}
{{{  this isnt Polymorphism
```ruby
class Circle
  def draw; end
end

class Blinds
  def draw; end
end
```
}}}

# Collaborator objects

{{{  example1: joe and his bulldog bud 

```ruby
class Person
  attr_accessor :name, :pet

  def initialize(name)
    @name = name
  end
end

bob = Person.new("Robert")
bud = Bulldog.new             # assume Bulldog class from previous assignment

bob.pet = bud    # bud is a "collaborator object"
```
}}}
# Easy1
{{{   complete this class 'banner' to create the desired output
```ruby
class Banner
  def initialize(message)
    @message = message
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  # horizontal_rule  must be as long as message_line
  # this requires a variable amount of "-" between the +
  def horizontal_rule
    "+-#{'-' * (@message.size)}-+"
  end

  # empty line must be as long as message_line
  # this requires a variable amount of " " between the |
  def empty_line
    spaces = ""
    (message_line.size - 2).times { spaces << ' '}
    "| #{' ' * (@message.size)} |"
  end

  def message_line
    "| #{@message} |"
  end
end

# test case 1
banner = Banner.new('To boldly go where no one has gone before.')
puts banner
banner = Banner.new('')
puts banner
# 
```


}}}
{{{   create missing getter methods
```ruby

class Book
  def initialize(author, title)
    @author = author
    @title = title
  end

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new("Neil Stephenson", "Snow Crash")
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)

# The author of "Snow Crash" is Neil Stephenson.
# book = "Snow Crash", by Neil Stephenson.
```
}}}
{{{   create missing setter and constructor methods
```ruby
class Book
  attr_accessor :author, :title
  def initialize
  end
  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new
book.author = "Neil Stephenson"
book.title = "Snow Crash"
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)
```
}}}
{{{   create setters for this class
```ruby
class Person
  def initialize(first_name, last_name)
    @first_name = first_name.capitalize
    @last_name = last_name.capitalize
  end

  def to_s
    "#{@first_name} #{@last_name}"
  end

  def first_name=(value)
    @first_name = value.capitalize
  end

  def last_name=(value)
    @last_name = value.capitalize
  end
end

person = Person.new('john', 'doe')
puts person

person.first_name = 'jane'
person.last_name = 'smith'
puts person
```
}}}
{{{   fix increment_mileage without using @mileage

```ruby
class Car
  attr_accessor :mileage

  def initialize
    @mileage = 0
  end

  def increment_mileage(miles)
    total = mileage + miles
    mileage = total
  end

  def print_mileage
    puts mileage
  end
end

car = Car.new
car.mileage = 5000
car.increment_mileage(678)
car.print_mileage  # should print 5678
```
}}}
{{{   use super to pass the appropriate number of arguments to parent method
```ruby

class Rectangle
  def initialize(height, width)
    @height = height
    @width = width
  end

  def area
    @height * @width
  end
end

class Square < Rectangle

  def initialize(length)
    super(length, length)
  end
end
square = Square.new(5)
puts "area of square = #{square.area}"
```
}}}
{{{   create a superclass to avoid redundancy
```ruby
class Car
  attr_reader :make, :model

  def initialize(make, model)
    @make = make
    @model = model
  end

  def wheels
    4
  end

  def to_s
    "#{make} #{model}"
  end
end

class Motorcycle
  attr_reader :make, :model

  def initialize(make, model)
    @make = make
    @model = model
  end

  def wheels
    2
  end

  def to_s
    "#{make} #{model}"
  end
end

class Truck
  attr_reader :make, :model, :payload

  def initialize(make, model, payload)
    @make = make
    @model = model
    @payload = payload
  end

  def wheels
    6
  end

  def to_s
    "#{make} #{model}"
  end
end
```
}}}
{{{   blah
```ruby

```
}}}

# Easy2
{{{     walking and strutting:   redefine module and override to_s in all
            classes
```ruby
module Walkable
  def walk
    "#{self} #{gait} forward"
  end
end

class Person
  include Walkable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "strolls"
  end

  def to_s
    name
  end
end

class Noble
  include Walkable
  attr_reader :title, :name
 
  def initialize(name, title)
    @name = name
    @title = title
  end

  def gait
    "struts"
  end

  def to_s
    "#{title} #{name}"
  end

end

class Cat
  include Walkable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def to_s
    name
  end

  def gait
    "saunters"
  end
end

class Cheetah
  include Walkable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "runs"
  end

  def to_s
    name
  end
end

byron = Noble.new("Byron", "Lord")
me = Person.new("William")
kitty = Cat.new("Spanky")
this_cheetah = Cheetah.new("Cheetarah")

puts me.walk
puts kitty.walk
puts this_cheetah.walk
puts byron.walk

```

}}}

# Medium1

{{{  make `flip_switch` and `switch=` private
```ruby
class Machine
  attr_writer :switch

  def start
    self.flip_switch(:on)
  end

  def stop
    self.flip_switch(:off)
  end

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end
```
}}}
{{{  write the class that would make these puts output 'true' 16x
```ruby
fixed_array = FixedArray.new(5)
puts fixed_array[3] == nil
puts fixed_array.to_a == [nil] * 5

fixed_array[3] = 'a'
puts fixed_array[3] == 'a'
puts fixed_array.to_a == [nil, nil, nil, 'a', nil]

fixed_array[1] = 'b'
puts fixed_array[1] == 'b'
puts fixed_array.to_a == [nil, 'b', nil, 'a', nil]

fixed_array[1] = 'c'
puts fixed_array[1] == 'c'
puts fixed_array.to_a == [nil, 'c', nil, 'a', nil]

fixed_array[4] = 'd'
puts fixed_array[4] == 'd'
puts fixed_array.to_a == [nil, 'c', nil, 'a', 'd']
puts fixed_array.to_s == '[nil, "c", nil, "a", "d"]'

puts fixed_array[-1] == 'd'
puts fixed_array[-4] == 'c'

begin
  fixed_array[6]
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[-7] = 3
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[7] = 3
  puts false
rescue IndexError
  puts true
end

```
}}}
{{{  fill in the remaining details of the constructor methods for
     both Graduate and Undergraduate while making minimal changes
```ruby
class Student
  def initialize(name, year)
    @name = name
    @year = year
  end
end

class Graduate
  def initialize(name, year, parking)
  end
end

class Undergraduate
  def initialize(name, year)
  end
end
```
}}}
{{{  problemX
```ruby

```
}}}
{{{  problemX
```ruby

```
}}}
{{{  problemX
```ruby

```
}}}
{{{  problemX
```ruby

```
}}}
{{{  problemX
```ruby

```
}}}
{{{  problemX
```ruby

```
}}}
{{{  problemX
```ruby

```
}}}
{{{  problemX
```ruby

```
}}}


