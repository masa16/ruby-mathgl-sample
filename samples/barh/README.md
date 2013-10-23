
## barh.rb

```ruby
PROCS['barh'] = proc do
  ys = MathGL::MglData.new(10,3)
  ys.modify("0.8*sin(pi*(2*x+y/2))+0.2*rnd")
  set_origin(0,0,0)
  if !$mini
    sub_plot(2,2,0,"")
    title("Barh plot (default)")
  end
  box()
  barh(ys)
  if $mini
    return
  end
  sub_plot(2,2,1,"")
  title("2 colors")
  box()
  barh(ys,"cbgGyr")
  set_ranges(-3,3,-1,1)
  sub_plot(2,2,2,"")
  title("'a' style")
  box()
  barh(ys,"a")
  sub_plot(2,2,3,"")
  title("'f' style")
  box()
  barh(ys,"f")
end


```
![image of barh.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/barh/barh.png)
