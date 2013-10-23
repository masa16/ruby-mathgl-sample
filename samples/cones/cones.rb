PROCS['cones'] = proc do
  ys = MathGL::MglData.new(10,3)
  ys.modify("0.8*sin(pi*(2*x+y/2))+0.2*rnd")
  light(true)
  set_origin(0,0,0)
  if !$mini
    sub_plot(2,2,0)
    title("Cones plot")
  end
  rotate(50,60)
  box()
  cones(ys)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("2 colors")
  rotate(50,60)
  box()
  cones(ys,"cbgGyr")
  sub_plot(2,2,2)
  title("'\\#' style")
  rotate(50,60)
  box()
  cones(ys,"#")
  sub_plot(2,2,3)
  title("'a' style")
  set_range('z',-2,2)
  rotate(50,60)
  box()
  cones(ys,"a")
end

