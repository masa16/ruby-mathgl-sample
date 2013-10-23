
## tape.rb

```ruby
PROCS['tape'] = proc do
  y = MathGL::MglData.new
  mgls_prepare1d(y)
  xc = MathGL::MglData.new(50)
  yc = MathGL::MglData.new(50)
  z = MathGL::MglData.new(50)
  yc.modify("sin(pi*(2*x-1))")
  xc.modify("cos(pi*2*x-pi)")
  z.fill(-1,1)
  if !$mini
    sub_plot(2,2,0,"")
    title("Tape plot (default)")
  end
  box()
  tape(y)
  plot(y,"k")
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("3d variant, 2 colors")
  rotate(50,60)
  light(true)
  box()
  plot(xc,yc,z,"k")
  tape(xc,yc,z,"rg")
  sub_plot(2,2,2)
  title("3d variant, x only")
  rotate(50,60)
  box()
  plot(xc,yc,z,"k")
  tape(xc,yc,z,"xr")
  tape(xc,yc,z,"xr#")
  sub_plot(2,2,3)
  title("3d variant, z only")
  rotate(50,60)
  box()
  plot(xc,yc,z,"k")
  tape(xc,yc,z,"zg")
  tape(xc,yc,z,"zg#")
end


```
![image of tape.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/tape/tape.png)
