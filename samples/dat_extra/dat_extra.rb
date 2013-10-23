PROCS['dat_extra'] = proc do
  sub_plot(2,2,0,"")
  title("Envelop sample")
  d1 = MathGL::MglData.new(1000)
  fill(d1,"exp(-8*x^2)*sin(10*pi*x)")
  axis()
  plot(d1, "b")
  d1.envelop('x')
  plot(d1, "r")
  sub_plot(2,2,1,"")
  title("Smooth sample")
  y0 = MathGL::MglData.new(30)
  y1 = MathGL::MglData.new
  y2 = MathGL::MglData.new
  y3 = MathGL::MglData.new
  set_ranges(0,1,0,1)
  fill(y0, "0.4*sin(pi*x) + 0.3*cos(1.5*pi*x) - 0.4*sin(2*pi*x)+0.5*rnd")
  y1=y0
  y1.smooth("x3")
  y2=y0
  y2.smooth("x5")
  y3=y0
  y3.smooth("x")
  plot(y0,"{m7}:s", "legend 'none'")
  plot(y1,"r", "legend ''3' style'")
  plot(y2,"g", "legend ''5' style'")
  plot(y3,"b", "legend 'default'")
  legend()
  box()
  sub_plot(2,2,2)
  title("Sew sample")
  d2 = MathGL::MglData.new(100, 100)
  fill(d2, "mod((y^2-(1-x)^2)/2,0.1)")
  rotate(50, 60)
  light(true)
  alpha(true)
  box()
  surf(d2, "b")
  d2.sew("xy", 0.1)
  surf(d2, "r")
  sub_plot(2,2,3)
  title("Resize sample (interpolation)")
  x0 = MathGL::MglData.new(10)
  v0 = MathGL::MglData.new(10)
  x1 = MathGL::MglData.new
  v1 = MathGL::MglData.new
  fill(x0,"rnd")
  fill(v0,"rnd")
  x1 = x0.resize(100)
  v1 = v0.resize(100)
  plot(x0,v0,"b+ ")
  plot(x1,v1,"r-")
  label(x0,v0,"%n")
end

