PROCS['stereo'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  light(true)
  sub_plot(2,1,0)
  rotate(50,60+1)
  box()
  surf(a)
  sub_plot(2,1,1)
  rotate(50,60-1)
  box()
  surf(a)
end
