
## stem.rb

```ruby
PROCS['stem'] = proc do
  y = MathGL::MglData.new
  mgls_prepare1d(y)
  set_origin(0,0,0)
  yc = MathGL::MglData.new(30)
  xc = MathGL::MglData.new(30)
  z = MathGL::MglData.new(30)
  z.modify("2*x-1")
  yc.modify("sin(pi*(2*x-1))")
  xc.modify("cos(pi*2*x-pi)")
  if !$mini
    sub_plot(2,2,0,"")
    title("Stem plot (default)")
  end
  box()
  stem(y)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("3d variant")
  rotate(50,60)
  box()
  stem(xc,yc,z,"rx")
  sub_plot(2,2,2,"")
  title("'!' style")
  box()
  stem(y,"o!rgb")
end
```
![image of stem.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/stem/stem.png)
