PROCS['plot'] = proc do
  y = MathGL::MglData.new
  mgls_prepare1d(y)
  set_origin(0,0,0)
  if !$mini
    sub_plot(2,2,0,"")
    title("Plot plot (default)")
  end
  box()
  plot(y)
  if $mini
    return
  end
  sub_plot(2,2,2,"")
  title("'!' style; 'rgb' palette")
  box()
  plot(y,"o!rgb")
  sub_plot(2,2,3,"")
  title("just markers")
  box()
  plot(y," +")
  sub_plot(2,2,1)
  title("3d variant")
  rotate(50,60)
  box()
  yc = MathGL::MglData.new(30)
  xc = MathGL::MglData.new(30)
  z = MathGL::MglData.new(30)
  z.modify("2*x-1")
  yc.modify("sin(pi*(2*x-1))")
  xc.modify("cos(pi*2*x-pi)")
  plot(xc,yc,z,"rs")
end

