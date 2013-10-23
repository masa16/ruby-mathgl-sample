
## dens_xyz.rb

```ruby
PROCS['dens_xyz'] = proc do
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  if !$mini
    title("Dens[XYZ] sample")
  end
  rotate(50,60)
  box()
  dens_x(c.sum("x"),"",-1)
  dens_y(c.sum("y"),"",1)
  dens_z(c.sum("z"),"",-1)
end
```
![image of dens_xyz.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/dens_xyz/dens_xyz.png)
