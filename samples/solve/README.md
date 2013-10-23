
## solve.rb

```ruby
PROCS['solve'] = proc do
  set_range('z',0,1)
  x = MathGL::MglData.new(20,30)
  y = MathGL::MglData.new(20,30)
  z = MathGL::MglData.new(20,30)
  xx = MathGL::MglData.new
  yy = MathGL::MglData.new
  zz = MathGL::MglData.new
  fill(x,"(x+2)/3*cos(pi*y)")
  fill(y,"(x+2)/3*sin(pi*y)")
  fill(z,"exp(-6*x^2-2*sin(pi*y)^2)")
  sub_plot(2,1,0)
  title("Cartesian space")
  rotate(30,-40)
  axis("xyzU")
  box()
  label('x',"x")
  label('y',"y")
  set_origin(1,1)
  grid("xy")
  mesh(x,y,z)
  u = x.solve(0.5,'x')
  v = MathGL::MglData.new(u.nx)
  v.fill(0,1)
  xx = x.evaluate(u,v)
  yy = y.evaluate(u,v)
  zz = z.evaluate(u,v)
  plot(xx,yy,zz,"k2o")
  u1 = x.solve(-0.5,'y')
  v1 = MathGL::MglData.new(u1.nx)
  v1.fill(0,1)
  xx = x.evaluate(v1,u1)
  yy = y.evaluate(v1,u1)
  zz = z.evaluate(v1,u1)
  plot(xx,yy,zz,"b2^")
  u2 = x.solve(-0.5,'y',u1)
  xx = x.evaluate(v1,u2)
  yy = y.evaluate(v1,u2)
  zz = z.evaluate(v1,u2)
  plot(xx,yy,zz,"r2v")
  sub_plot(2,1,1)
  title("Accompanied space")
  set_ranges(0,1,0,1)
  set_origin(0,0)
  axis()
  box()
  label('x',"i")
  label('y',"j")
  grid(z,"h")
  plot(u,v,"k2o")
  line([0.4,0.5],[0.8,0.5],"kA")
  plot(v1,u1,"b2^")
  line([0.5,0.15],[0.5,0.3],"bA")
  plot(v1,u2,"r2v")
  line([0.5,0.7],[0.5,0.85],"rA")
end


```
![image of solve.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/solve/solve.png)
