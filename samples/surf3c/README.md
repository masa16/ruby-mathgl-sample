
## surf3c.rb

```ruby
PROCS['surf3c'] = proc do
  c = MathGL::MglData.new
  d = MathGL::MglData.new
  mgls_prepare3d(c,d)
  if !$mini
    title("Surf3C plot")
  end
  rotate(50,60)
  light(true)
  alpha(true)
  box()
  surf_3c(c,d)
end
```
![image of surf3c.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/surf3c/surf3c.png)
