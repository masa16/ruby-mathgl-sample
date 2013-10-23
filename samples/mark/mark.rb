PROCS['mark'] = proc do
  y = MathGL::MglData.new
  y1 = MathGL::MglData.new
  mgls_prepare1d(y,y1)
  if !$mini
    sub_plot(1,1,0,"")
    title("Mark plot (default)")
  end
  box()
  mark(y,y1,"s")
end
