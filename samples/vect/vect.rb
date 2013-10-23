PROCS['vect'] = proc do
  a = MathGL::MglData.new
  b = MathGL::MglData.new
  mgls_prepare2v(a,b)
  if !$mini
    sub_plot(3,2,0,"")
    title("Vect plot (default)")
  end
  box()
  vect(a,b)
  if $mini
    return
  end
  sub_plot(3,2,1,"")
  title("'.' style; '=' style")
  box()
  vect(a,b,"=.")
  sub_plot(3,2,2,"")
  title("'f' style")
  box()
  vect(a,b,"f")
  sub_plot(3,2,3,"")
  title("'>' style")
  box()
  vect(a,b,">")
  sub_plot(3,2,4,"")
  title("'<' style")
  box()
  vect(a,b,"<")
  ex = MathGL::MglData.new
  ey = MathGL::MglData.new
  ez = MathGL::MglData.new
  mgls_prepare3v(ex,ey,ez)
  sub_plot(3,2,5)
  title("3d variant")
  rotate(50,60)
  box()
  vect(ex,ey,ez)
end

