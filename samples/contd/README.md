
## contd.rb

```ruby
PROCS['contd'] = proc do
  a = MathGL::MglData.new
  v = MathGL::MglData.new(5)
  a1 = MathGL::MglData.new(30,40,3)
  mgls_prepare2d(a)
  v.set_val(-0.5,0)
  v.set_val(-0.15,1)
  v.set_val(0,2)
  v.set_val(0.15,3)
  v.set_val(0.5,4)
  fill(a1,"0.6*sin(2*pi*x+pi*(z+1)/2)*sin(3*pi*y+pi*z) + 0.4*cos(3*pi*(x*y)+pi*(z+1)^2/2)")
  if !$mini
    sub_plot(2,2,0)
    title("ContD plot (default)")
  end
  rotate(50,60)
  box()
  cont_d(a)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("manual levels")
  rotate(50,60)
  box()
  cont_d(v,a)
  sub_plot(2,2,2)
  title("'\\_' style")
  rotate(50,60)
  box()
  cont_d(a,"_")
  sub_plot(2,2,3)
  title("several slices")
  rotate(50,60)
  box()
  cont_d(a1)
end
```
![image of contd.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/contd/contd.png)
