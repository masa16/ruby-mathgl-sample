
## aspect.rb

```ruby
PROCS['aspect'] = proc do
  sub_plot(2,2,0)
  box()
  puts([-1,1.1],"Just box",":")
  in_plot(0.2,0.5,0.7,1,false)
  box()
  puts([0,1.2],"InPlot example")
  sub_plot(2,2,1)
  title("Rotate only")
  rotate(50,60)
  box()
  sub_plot(2,2,2)
  title("Rotate and Aspect")
  rotate(50,60)
  aspect(1,1,2)
  box()
  sub_plot(2,2,3)
  title("Aspect inp other direction")
  rotate(50,60)
  aspect(1,2,2)
  box()
end
```
![image of aspect.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/aspect/aspect.png)
