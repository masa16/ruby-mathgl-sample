
## dat_diff.rb

```ruby
PROCS['dat_diff'] = proc do
  set_ranges(0,1,0,1,0,1)
  a = MathGL::MglData.new(30,40)
  a.modify("x*y")
  sub_plot(2,2,0)
  title("a(x,y)")
  rotate(60,40)
  surf(a)
  box()
  sub_plot(2,2,1)
  title("da/dx")
  rotate(60,40)
  a.diff("x")
  surf(a)
  box()
  sub_plot(2,2,2)
  title("\\int da/dx dxdy")
  rotate(60,40)
  a.integral("xy")
  surf(a)
  box()
  sub_plot(2,2,3)
  title("\\int {d^2}a/dxdy dx")
  rotate(60,40)
  a.diff2("y")
  surf(a)
  box()
end
```
![image of dat_diff.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/dat_diff/dat_diff.png)
