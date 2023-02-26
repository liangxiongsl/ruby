`case-when-else`类似于c的`switch-case-default`，但前者是**短路**的

```ruby
case <表达式>
[when <表达式> [, <表达式>[...]]
	<语句>
]
[else
	<语句>
]
end
```