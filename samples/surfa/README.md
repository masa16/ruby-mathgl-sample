
## surfa.rb

```ruby
PROCS['surfa'] = proc do
  a = MathGL::MglData.new
  b = MathGL::MglData.new
  mgls_prepare2d(a,b)
  if !$mini
    title("SurfA plot")
  end
  rotate(50,60)
  alpha(true)
  light(true)
  box()
  surf_a(a,b)
end
```
![image of surfa.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/surfa/surfa.png)
