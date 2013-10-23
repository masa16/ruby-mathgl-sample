PROCS['boxs'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  set_origin(0,0,0)
  light(true)
  if !$mini
    sub_plot(2,2,0)
    title("Boxs plot (default)")
  end
  rotate(40,60)
  box()
  boxs(a)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("'\\@' style")
  rotate(50,60)
  box()
  boxs(a,"@")
  sub_plot(2,2,2)
  title("'\\#' style")
  rotate(50,60)
  box()
  boxs(a,"#")
  sub_plot(2,2,3)
  title("compare with Tile")
  rotate(50,60)
  box()
  tile(a)
end

