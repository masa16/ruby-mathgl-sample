
## map.rb

```ruby
PROCS['map'] = proc do
  a = MathGL::MglData.new(50, 40)
  b = MathGL::MglData.new(50, 40)
  puts([0, 0], "\\to", ":C", -1.4)
  set_ranges(-1,1,-1,1,-2,2)
  sub_plot(2, 1, 0)
  fill(a,"x")
  fill(b,"y")
  puts([0, 1.1], "\\{x, y\\}", ":C", -2)
  box()
  map(a, b, "brgk")
  sub_plot(2, 1, 1)
  fill(a,"(x^3+y^3)/2")
  fill(b,"(x-y)/2")
  puts([0, 1.1], "\\{\\frac{x^3+y^3}{2}, \\frac{x-y}{2}\\}", ":C", -2)
  box()
  map(a, b, "brgk")
end


```
![image of map.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/map/map.png)
