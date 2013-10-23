
## contfa.rb

```ruby
PROCS['contfa'] = proc do
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  if !$mini
    title("ContF3 sample")
  end
  rotate(50,60)
  light(true)
  box()
  cont_f3(c,"x")
  cont_f3(c)
  cont_f3(c,"z")
  cont3(c,"kx")
  cont3(c,"k")
  cont3(c,"kz")
end
```
![image of contfa.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/contfa/contfa.png)
