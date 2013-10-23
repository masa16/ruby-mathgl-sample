
## surf.rb

```ruby
PROCS['surf'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  if !$mini
    sub_plot(2,2,0)
    title("Surf plot (default)")
  end
  light(true)
  rotate(50,60)
  box()
  surf(a)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("'\\#' style; meshnum 10")
  rotate(50,60)
  box()
  surf(a,"#","meshnum 10")
  sub_plot(2,2,2)
  title("'.' style")
  rotate(50,60)
  box()
  surf(a,".")
  sub_plot(2,2,3)
  title("parametric form")
  x = MathGL::MglData.new(50,40)
  y = MathGL::MglData.new(50,40)
  z = MathGL::MglData.new(50,40)
  fill(x,"0.8*sin(pi*x)*sin(pi*(y+1)/2)")
  fill(y,"0.8*cos(pi*x)*sin(pi*(y+1)/2)")
  fill(z,"0.8*cos(pi*(y+1)/2)")
  rotate(50,60)
  box()
  surf(x,y,z,"BbwrR")
end
```
![image of surf.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/surf/surf.png)
