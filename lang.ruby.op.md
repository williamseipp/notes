
{{{ conditional


`==`        equals
`!=`        not equals
`>`         greater than
`<`         less than
`>=`        greater than or equal
`<=`        less than or equal

`?:`        ternary
`<=>`       returns 0 if 
`===`       test equality within a when clause of a case statement
`.eql?`     true if receiver and argument have same type & values
`equal?`    true if receiver and argument have same object id



}}}

{{{ short-circuit evaluation

```ruby


def valid_age?(age)
  age.number? && age.positive?
    # if age isnt a number, stop evaluation
end
```

Ruby wont bother evaluating the second condition
if the first is false; && requires both to be true
}}}

{{{  replace

}}}
{{{  replace

}}}
{{{  replace

}}}
{{{  replace

}}}
{{{  replace

}}}
{{{  replace

}}}
{{{  replace

}}}
