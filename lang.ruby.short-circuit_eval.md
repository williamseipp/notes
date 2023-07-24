
```ruby
def valid_age?(age)
  age.number? && age.positive?
    # if age isnt a number, stop evaluation
end
```

Ruby wont bother evaluating the second condition
if the first is false; && requires both to be true


