
## area.rb

```ruby
PROCS['area'] = proc do
  y = MathGL::MglData.new
  mgls_prepare1d(y)
  set_origin(0,0,0)
  if !$mini
    sub_plot(2,2,0,"")
    title("Area plot (default)")
  end
  box()
  area(y)
  if $mini
    return
  end
  sub_plot(2,2,1,"")
  title("2 colors")
  box()
  area(y,"cbgGyr")
  sub_plot(2,2,2,"")
  title("'!' style")
  box()
  area(y,"!")
  sub_plot(2,2,3)
  title("3d variant")
  rotate(50,60)
  box()
  yc = MathGL::MglData.new(30)
  xc = MathGL::MglData.new(30)
  z = MathGL::MglData.new(30)
  z.modify("2*x-1")
  yc.modify("sin(pi*(2*x-1))")
  xc.modify("cos(pi*2*x-pi)")
  area(xc,yc,z,"r")
  yc.modify("-sin(pi*(2*x-1))")
  area(xc,yc,z,"b#")
end


```
![image of area.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/area/area.png)
