PROCS['error'] = proc do
  y = MathGL::MglData.new
  mgls_prepare1d(y)
  x0 = MathGL::MglData.new(10)
  y0 = MathGL::MglData.new(10)
  ex0 = MathGL::MglData.new(10)
  ey0 = MathGL::MglData.new(10)
  for i in 0...10
    x = i/9.0
    x0.set_val(2*x-1 + 0.1*mgl_rnd()-0.05,i)
    y0.set_val(0.7*Math.sin(2*M_PI*x)+0.5*Math.cos(3*M_PI*x)+0.2*Math.sin(M_PI*x)+0.2*mgl_rnd()-0.1,i)
    ey0.set_val(0.2,i)
    ex0.set_val(0.1,i)
  end
  if !$mini
    sub_plot(2,2,0,"")
    title("Error plot (default)")
  end
  box()
  plot(y.sub_data(-1,0))
  error(x0,y0,ex0,ey0,"ko")
  if $mini
    return
  end
  sub_plot(2,2,1,"")
  title("'!' style; no e_x")
  box()
  plot(y.sub_data(-1,0))
  error(x0,y0,ey0,"o!rgb")
  sub_plot(2,2,2,"")
  title("'\\@' style")
  alpha(true)
  box()
  plot(y.sub_data(-1,0))
  error(x0,y0,ex0,ey0,"@","alpha 0.5")
  sub_plot(2,2,3)
  title("3d variant")
  rotate(50,60)
  for i in 0...10
    error([2*mgl_rnd()-1,2*mgl_rnd()-1,2*mgl_rnd()-1], [0.2,0.2,0.2],"bo")
  end
  axis()
end
