PROCS['param1'] = proc do
  x = MathGL::MglData.new(100)
  y = MathGL::MglData.new(100)
  z = MathGL::MglData.new(100)
  c = MathGL::MglData.new(100)
  fill(x,"sin(pi*x)")
  fill(y,"cos(pi*x)")
  fill(z,"sin(2*pi*x)")
  fill(c,"cos(2*pi*x)")
  sub_plot(4,3,0)
  rotate(40,60)
  box()
  plot(x,y,z)
  sub_plot(4,3,1)
  rotate(40,60)
  box()
  area(x,y,z)
  sub_plot(4,3,2)
  rotate(40,60)
  box()
  tens(x,y,z,c)
  sub_plot(4,3,3)
  rotate(40,60)
  box()
  bars(x,y,z)
  sub_plot(4,3,4)
  rotate(40,60)
  box()
  stem(x,y,z)
  sub_plot(4,3,5)
  rotate(40,60)
  box()
  text_mark(x,y,z,"\\alpha")
  sub_plot(4,3,6)
  rotate(40,60)
  box()
  tube(x,y,z,c/10,"","light on")
  sub_plot(4,3,7)
  rotate(40,60)
  box()
  mark(x,y,z,c,"s")
  sub_plot(4,3,8)
  rotate(40,60)
  box()
  error(x,y,z/10,c/10)
  sub_plot(4,3,9)
  rotate(40,60)
  box()
  step(x,y,z)
  sub_plot(4,3,10)
  rotate(40,60)
  box()
  torus(x,z,"z","light on")
  sub_plot(4,3,11)
  rotate(40,60)
  box()
  label(x,y,z,"%z")
end

