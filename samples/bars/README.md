
## bars.rb

```ruby
PROCS['bars'] = proc do
  ys = MathGL::MglData.new(10,3)
  ys.modify("0.8*sin(pi*(2*x+y/2))+0.2*rnd")
  set_origin(0,0,0)
  if !$mini
    sub_plot(3,2,0,"")
    title("Bars plot (default)")
  end
  box()
  bars(ys)
  if $mini
    return
  end
  sub_plot(3,2,1,"")
  title("2 colors")
  box()
  bars(ys,"cbgGyr")
  sub_plot(3,2,4,"")
  title("'\\#' style")
  box()
  bars(ys,"#")
  sub_plot(3,2,5)
  title("3d variant")
  rotate(50,60)
  box()
  yc = MathGL::MglData.new(30)
  xc = MathGL::MglData.new(30)
  z = MathGL::MglData.new(30)
  z.modify("2*x-1")
  yc.modify("sin(pi*(2*x-1))")
  xc.modify("cos(pi*2*x-pi)")
  bars(xc,yc,z,"r")
  set_ranges(-1,1,-3,3)
  sub_plot(3,2,2,"")
  title("'a' style")
  box()
  bars(ys,"a")
  sub_plot(3,2,3,"")
  title("'f' style")
  box()
  bars(ys,"f")
end


```
![image of bars.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/bars/bars.png)
