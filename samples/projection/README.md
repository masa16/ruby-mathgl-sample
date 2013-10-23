
## projection.rb

```ruby
PROCS['projection'] = proc do
  set_ranges(0,1,0,1,0,1)
  x = MathGL::MglData.new(50)
  y = MathGL::MglData.new(50)
  z = MathGL::MglData.new(50)
  rx = MathGL::MglData.new(10)
  ry = MathGL::MglData.new(10)
  a = MathGL::MglData.new(20,30)
  a.modify("30*x*y*(1-x-y)^2*(x+y<1)")
  x.modify("0.25*(1+cos(2*pi*x))")
  y.modify("0.25*(1+sin(2*pi*x))")
  rx.modify("rnd")
  ry.modify("(1-v)*rnd",rx)
  z.modify("x")
  if !$mini
    title("Projection sample")
  end
  ternary(4)
  rotate(50,60)
  light(true)
  plot(x,y,z,"r2")
  surf(a,"#")
  axis()
  grid()
  box()
  label('x',"X",1)
  label('y',"Y",1)
  label('z',"Z",1)
end


```
![image of projection.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/projection/projection.png)
