PROCS['chart'] = proc do
  ch = MathGL::MglData.new(7,2)
  for i in 0...7*2
    ch.set_val(mgl_rnd()+0.1,i)
  end
  if !$mini
    sub_plot(2,2,0)
    title("Chart plot (default)")
  end
  light(true)
  rotate(50,60)
  box()
  chart(ch)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("'\\#' style")
  rotate(50,60)
  box()
  chart(ch,"#")
  sub_plot(2,2,2)
  title("Pie chart; ' ' color")
  set_func("(y+1)/2*cos(pi*x)","(y+1)/2*sin(pi*x)","")
  rotate(50,60)
  box()
  chart(ch,"bgr cmy#")
  sub_plot(2,2,3)
  title("Ring chart; ' ' color")
  set_func("(y+2)/3*cos(pi*x)","(y+2)/3*sin(pi*x)","")
  rotate(50,60)
  box()
  chart(ch,"bgr cmy#")
end
