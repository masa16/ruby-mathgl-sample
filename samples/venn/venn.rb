PROCS['venn'] = proc do
  xx = [-0.3,0,0.3]
  yy = [0.3,-0.3,0.3]
  ee = [0.7,0.7,0.7]
  x = MathGL::MglData.new(xx)
  y = MathGL::MglData.new(yy)
  e = MathGL::MglData.new(ee)
  sub_plot(1,1,0)
  title("Venn-like diagram")
  alpha(true)
  error(x,y,e,e,"!rgb@#o")
end

