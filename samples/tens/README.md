
## tens.rb

```ruby
PROCS['tens'] = proc do
  y = MathGL::MglData.new
  mgls_prepare1d(y)
  set_origin(0,0,0)
  if !$mini
    sub_plot(2,2,0,"")
    title("Tens plot (default)")
  end
  box()
  tens(y.sub_data(-1,0), y.sub_data(-1,1))
  if $mini
    return
  end
  sub_plot(2,2,2,"")
  title("' ' style")
  box()
  tens(y.sub_data(-1,0), y.sub_data(-1,1),"o ")
  sub_plot(2,2,1)
  title("3d variant")
  rotate(50,60)
  box()
  yc = MathGL::MglData.new(30)
  xc = MathGL::MglData.new(30)
  z = MathGL::MglData.new(30)
  z.modify("2*x-1")
  yc.modify("sin(pi*(2*x-1))")
  xc.modify("cos(pi*2*x-pi)")
  tens(xc,yc,z,z,"s")
end
```
![image of tens.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/tens/tens.png)
