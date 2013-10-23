
## cont_xyz.rb

```ruby
PROCS['cont_xyz'] = proc do
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  if !$mini
    title("Cont[XYZ] sample")
  end
  rotate(50,60)
  box()
  cont_x(c.sum("x"),"",-1)
  cont_y(c.sum("y"),"",1)
  cont_z(c.sum("z"),"",-1)
end
```
![image of cont_xyz.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/cont_xyz/cont_xyz.png)
