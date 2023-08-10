
## what are booleans?
Booleans are objects that represent 'true' or 'false' in Ruby.
They are essential to building conditional logic

`true`, `false`


{{{   TRUTHY
```ruby

num = 5

if num
  puts 'number isnt nil!'
else
  puts 'number is false or nil'
end
```

All values other than `nil` and `false` are `truthy`. Because `num` evaluates
as `truthy`, the code will display 'the number isnt nil!'


`num == true      # => false`
Booleans differ from 'truthy' or 'falsey' values in that only `true` is `true`


}}}

{{{   METHODS

```ruby

true.class          # => TrueClass
true.nil?           # => false
true.to_s           # => "true"
true.methods        # => list of methods you can call on the true object

```
}}}
