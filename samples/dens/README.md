
## dens.rb

```ruby
PROCS['dens'] = proc do
  a = MathGL::MglData.new
  a1 = MathGL::MglData.new(30,40,3)
  mgls_prepare2d(a)
  fill(a1,"0.6*sin(2*pi*x+pi*(z+1)/2)*sin(3*pi*y+pi*z) + 0.4*cos(3*pi*(x*y)+pi*(z+1)^2/2)")
  if !$mini
    sub_plot(2,2,0,"")
    title("Dens plot (default)")
  end
  box()
  dens(a)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("3d variant")
  rotate(50,60)
  box()
  dens(a)
  sub_plot(2,2,2,"")
  title("'\\#' style; meshnum 10")
  box()
  dens(a,"#","meshnum 10")
  sub_plot(2,2,3)
  title("several slices")
  rotate(50,60)
  box()
  dens(a1)
end
```
![image of dens.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/dens/dens.png)
