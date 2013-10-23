PROCS['pde'] = proc do
  a = MathGL::MglData.new
  re = MathGL::MglData.new(128)
  im = MathGL::MglData.new(128)
  fill(re,"exp(-48*(x+0.7)^2)")
  pde("p^2+q^2-x-1+i*0.5*(z+x)*(z>-x)", re, im, 0.01, 30)
  a.transpose("yxz")
  if !$mini
    sub_plot(1,1,0,"<_")
    title("PDE solver")
  end
  set_range('c',0,1)
  dens(a,"wyrRk")
  axis()
  label('x', "\\i x")
  label('y', "\\i z")
  fplot("-x", "k|")
  puts([0, 0.95], "Equation: ik_0\\partial_zu + \\Delta u + x\\cdot u + i \\frac{x+z}{2}\\cdot u = 0\nabsorption: (x+z)/2 for x+z>0")
end

