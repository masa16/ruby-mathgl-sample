PROCS['param2'] = proc do
  x = MathGL::MglData.new(100,100)
  y = MathGL::MglData.new(100,100)
  z = MathGL::MglData.new(100,100)
  c = MathGL::MglData.new(100,100)
  fill(x,"sin(pi*(x+y)/2)*cos(pi*y/2)")
  fill(y,"cos(pi*(x+y)/2)*cos(pi*y/2)")
  fill(z,"sin(pi*y/2)")
  fill(c,"cos(pi*x)")
  sub_plot(4,4,0)
  rotate(40,60)
  box()
  surf(x,y,z)
  sub_plot(4,4,1)
  rotate(40,60)
  box()
  surf_c(x,y,z,c)
  sub_plot(4,4,2)
  rotate(40,60)
  box()
  surf_a(x,y,z,c,"","alpha 1")
  sub_plot(4,4,3)
  rotate(40,60)
  box()
  mesh(x,y,z,"","meshnum 10")
  sub_plot(4,4,4)
  rotate(40,60)
  box()
  tile(x,y,z,"","meshnum 10")
  sub_plot(4,4,5)
  rotate(40,60)
  box()
  tile_s(x,y,z,c,"","meshnum 10")
  sub_plot(4,4,6)
  rotate(40,60)
  box()
  axial(x,y,z,"","alpha 0.5;light on")
  sub_plot(4,4,7)
  rotate(40,60)
  box()
  cont(x,y,z)
  sub_plot(4,4,8)
  rotate(40,60)
  box()
  cont_f(x,y,z,"","light on")
  cont_v(x,y,z,"","light on")
  sub_plot(4,4,9)
  rotate(40,60)
  box()
  belt(x,y,z,"x","meshnum 10;light on")
  sub_plot(4,4,10)
  rotate(40,60)
  box()
  dens(x,y,z,"","alpha 0.5")
  sub_plot(4,4,11)
  rotate(40,60)
  box()
  fall(x,y,z,"g","meshnum 10")
  fall(x,y,z,"rx","meshnum 10")
  sub_plot(4,4,12)
  rotate(40,60)
  box()
  belt(x,y,z,"","meshnum 10;light on")
  sub_plot(4,4,13)
  rotate(40,60)
  box()
  boxs(x,y,z,"","meshnum 10;light on")
  sub_plot(4,4,14)
  rotate(40,60)
  box()
  boxs(x,y,z,"#","meshnum 10")
  sub_plot(4,4,15)
  rotate(40,60)
  box()
  boxs(x,y,z,"@","meshnum 10;light on")
end
