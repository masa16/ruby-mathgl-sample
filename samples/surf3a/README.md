
## surf3a.rb

```ruby
PROCS['surf3a'] = proc do
  c = MathGL::MglData.new
  d = MathGL::MglData.new
  mgls_prepare3d(c,d)
  if !$mini
    title("Surf3A plot")
  end
  rotate(50,60)
  light(true)
  alpha(true)
  box()
  surf_3a(c,d)
end


```
![image of surf3a.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/surf3a/surf3a.png)
