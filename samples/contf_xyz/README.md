
## contf_xyz.rb

```ruby
PROCS['contf_xyz'] = proc do
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  if !$mini
    title("ContF[XYZ] sample")
  end
  rotate(50,60)
  box()
  cont_fx(c.sum("x"),"",-1)
  cont_fy(c.sum("y"),"",1)
  cont_fz(c.sum("z"),"",-1)
end
```
![image of contf_xyz.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/contf_xyz/contf_xyz.png)
