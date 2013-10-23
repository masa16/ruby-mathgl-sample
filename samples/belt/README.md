
## belt.rb

```ruby
PROCS['belt'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  if !$mini
    title("Belt plot")
  end
  rotate(50,60)
  box()
  belt(a)
end
```
![image of belt.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/belt/belt.png)
