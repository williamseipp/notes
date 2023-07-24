
### the name describes how it works

```ruby
convert_to_fahrenheit(celsius)
```

the name should describe what is being returned or changed
so well that looking up its implementation is unnecessary



### a good name is usable

```ruby

ace = find_ace(cards)
ace = find_ace_from_cards(cards)
```

The first example is easier to use



### methods should either mutate OR return a new value; NOT both


```ruby

def get_celsius(degrees_fahrenheit)
  5/9(degrees_fahrenheit - 32)
end

current_temp = 74
get_celsius(current_temp)

```
>> The name "get_celsius" implies returning a value, it would
>> be unexpected if value of current_temp were to be changed
>> If I wanted mutation, the name should say something like
>> "change" or "convert"
>> Methods should only do one; this is consistent with the name



### Method names should reflect mutation

```ruby
total = update_total(total, cards)
```

update_total should not be returning a value. It's only job is to
mutate a value.

