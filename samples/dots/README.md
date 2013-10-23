
## dots.rb

```ruby
PROCS['dots'] = proc do
  n = 1000
  x = MathGL::MglData.new(n)
  y = MathGL::MglData.new(n)
  z = MathGL::MglData.new(n)
  for i in 0...n
    t = M_PI*(mgl_rnd()-0.5)
    f = 2*M_PI*mgl_rnd()
    x.set_val(0.9*Math.cos(t)*Math.cos(f),i)
    y.set_val(0.9*Math.cos(t)*Math.sin(f),i)
    z.set_val(0.6*Math.sin(t),i)
  end
  if !$mini
    title("Dots sample")
  end
  rotate(50,60)
  box()
  dots(x,y,z)
end


```
![image of dots.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/dots/dots.png)
