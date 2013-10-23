PROCS['candle'] = proc do
  y = MathGL::MglData.new(30)
  fill(y,"sin(pi*x/2)^2")
  y1 = MathGL::MglData.new(30)
  fill(y1,"v/2",y)
  y2 = MathGL::MglData.new(30)
  fill(y2,"(1+v)/2",y)
  if !$mini
    sub_plot(1,1,0,"")
    title("Candle plot (default)")
  end
  set_range('y',0,1)
  box()
  candle(y,y1,y2)
end
