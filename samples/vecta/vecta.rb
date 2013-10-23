PROCS['vecta'] = proc do
  ex = MathGL::MglData.new
  ey = MathGL::MglData.new
  ez = MathGL::MglData.new
  mgls_prepare3v(ex,ey,ez)
  if !$mini
    sub_plot(2,1,0)
    title("Vect3 sample")
  end
  rotate(50,60)
  set_origin(0,0,0)
  axis("_xyz")
  box()
  vect3(ex,ey,ez,"x")
  vect3(ex,ey,ez)
  vect3(ex,ey,ez,"z")
  if $mini
    return
  end
  sub_plot(2,1,1)
  title("'f' style")
  rotate(50,60)
  set_origin(0,0,0)
  axis("_xyz")
  box()
  vect3(ex,ey,ez,"fx")
  vect3(ex,ey,ez,"f")
  vect3(ex,ey,ez,"fz")
  grid3(ex,"Wx")
  grid3(ex,"W")
  grid3(ex,"Wz")
end

