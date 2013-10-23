
## contv.rb

```ruby
PROCS['contv'] = proc do
  a = MathGL::MglData.new
  v = MathGL::MglData.new(5)
  mgls_prepare2d(a)
  v.set_val(-0.5,0)
  v.set_val(-0.15,1)
  v.set_val(0,2)
  v.set_val(0.15,3)
  v.set_val(0.5,4)
  if !$mini
    sub_plot(2,2,0)
    title("ContV plot (default)")
  end
  rotate(50,60)
  box()
  cont_v(a)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("manual levels")
  rotate(50,60)
  box()
  cont_v(v,a)
  sub_plot(2,2,2)
  title("'\\_' style")
  rotate(50,60)
  box()
  cont_v(a,"_")
  sub_plot(2,2,3)
  title("ContV and ContF")
  rotate(50,60)
  box()
  light(true)
  cont_v(a)
  cont_f(a)
  cont(a,"k")
end


```
![image of contv.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/contv/contv.png)
