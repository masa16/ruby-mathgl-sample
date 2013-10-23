PROCS['surf3'] = proc do
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  if !$mini
    sub_plot(2,2,0)
    title("Surf3 plot (default)")
  end
  rotate(50,60)
  light(true)
  alpha(true)
  box()
  surf3(c)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("'\\#' style")
  rotate(50,60)
  box()
  surf3(c,"#")
  sub_plot(2,2,2)
  title("'.' style")
  rotate(50,60)
  box()
  surf3(c,".")
end
