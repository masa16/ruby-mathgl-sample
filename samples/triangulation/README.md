
## triangulation.rb

```ruby
PROCS['triangulation'] = proc do
  x = MathGL::MglData.new(100)
  y = MathGL::MglData.new(100)
  z = MathGL::MglData.new(100)
  fill(x,"2*rnd-1")
  fill(y,"2*rnd-1")
  fill(z,"v^2-w^2",x,y)
  d = MathGL.mgl_triangulation(x,y)
  g = MathGL::MglData.new(30,30)
  if !$mini
    title("Triangulation")
  end
  rotate(40,60)
  box()
  light(true)
  tri_plot(d,x,y,z)
  tri_plot(d,x,y,z,"#k")
  data_grid(g,x,y,z)
  mesh(g,"m")
end
```
![image of triangulation.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/triangulation/triangulation.png)
