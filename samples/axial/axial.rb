PROCS['axial'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  if !$mini
    sub_plot(2,2,0)
    title("Axial plot (default)")
  end
  light(true)
  alpha(true)
  rotate(50,60)
  box()
  axial(a)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("'x' style; '.'style")
  rotate(50,60)
  box()
  axial(a,"x.")
  sub_plot(2,2,2)
  title("'z' style")
  rotate(50,60)
  box()
  axial(a,"z")
  sub_plot(2,2,3)
  title("'\\#' style")
  rotate(50,60)
  box()
  axial(a,"#")
end

