PROCS['label'] = proc do
  ys = MathGL::MglData.new(10)
  ys.modify("0.8*sin(pi*2*x)+0.2*rnd")
  if !$mini
    sub_plot(1,1,0,"")
    title("Label plot")
  end
  box()
  plot(ys," *")
  label(ys,"y=%y")
end

