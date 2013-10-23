
## hist.rb

```ruby
PROCS['hist'] = proc do
  x = MathGL::MglData.new(10000)
  y = MathGL::MglData.new(10000)
  z = MathGL::MglData.new(10000)
  fill(x,"2*rnd-1")
  fill(y,"2*rnd-1")
  fill(z,"exp(-6*(v^2+w^2))",x,y)
  xx = hist(x,z)
  yy = hist(y,z)
  xx.norm(0,1)
  yy.norm(0,1)
  multi_plot(3,3,3,2,2,"")
  set_ranges(-1,1,-1,1,0,1)
  box()
  dots(x,y,z,"wyrRk")
  multi_plot(3,3,0,2,1,"")
  set_ranges(-1,1,0,1)
  box()
  bars(xx)
  multi_plot(3,3,5,1,2,"")
  set_ranges(0,1,-1,1)
  box()
  barh(yy)
  sub_plot(3,3,2)
  puts([0.5,0.5],"Hist and\nMultiPlot\nsample","a",-3)
end
```
![image of hist.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/hist/hist.png)
