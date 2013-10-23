
## type2.rb

```ruby
PROCS['type2'] = proc do
  alpha(true)
  light(true)
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  set_transp_type(2)
  clf()
  sub_plot(2,2,0)
  rotate(50,60)
  surf(a)
  box()
  sub_plot(2,2,1)
  rotate(50,60)
  dens(a)
  box()
  sub_plot(2,2,2)
  rotate(50,60)
  cont(a)
  box()
  sub_plot(2,2,3)
  rotate(50,60)
  axial(a)
  box()
end


```
![image of type2.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/type2/type2.png)
