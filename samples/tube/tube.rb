PROCS['tube'] = proc do
  y = MathGL::MglData.new
  y1 = MathGL::MglData.new
  y2 = MathGL::MglData.new
  mgls_prepare1d(y,y1,y2)
  y1/=20
  if !$mini
    sub_plot(2,2,0,"")
    title("Tube plot (default)")
  end
  light(true)
  box()
  tube(y,0.05)
  if $mini
    return
  end
  sub_plot(2,2,1,"")
  title("variable radius")
  box()
  tube(y,y1)
  sub_plot(2,2,2,"")
  title("'\\#' style")
  box()
  tube(y,0.05,"#")
  yc = MathGL::MglData.new(50)
  xc = MathGL::MglData.new(50)
  z = MathGL::MglData.new(50)
  z.modify("2*x-1")
  yc.modify("sin(pi*(2*x-1))")
  xc.modify("cos(pi*2*x-pi)")
  sub_plot(2,2,3)
  title("3d variant")
  rotate(50,60)
  box()
  tube(xc,yc,z,y2,"r")
end
