PROCS['qo2d'] = proc do
  r = MathGL::MglData.new
  xx = MathGL::MglData.new
  yy = MathGL::MglData.new
  a = MathGL::MglData.new
  im = MathGL::MglData.new(128)
  re = MathGL::MglData.new(128)
  ham = "p^2+q^2-x-1+i*0.5*(y+x)*(y>-x)"
  r = MathGL.mgl_ray(ham, [-0.7, -1], [0, 0.5], 0.02, 2)
  if !$mini
    sub_plot(1,1,0,"<_")
    title("Beam and ray tracing")
  end
  plot(r.sub_data(0), r.sub_data(1), "k")
  axis()
  label('x', "\\i x")
  label('y', "\\i y")
  fill(re,"exp(-48*x^2)")
  a = MathGL.mgl_qo_2d(ham, re, im, r, xx, yy, 1, 30)
  set_range('c',0, 1)
  dens(xx, yy, a, "wyrRk")
  fplot("-x", "k|")
  puts([0, 0.85], "absorption: (x+y)/2 for x+y>0")
  puts([0.7, -0.05], "central ray")
end

