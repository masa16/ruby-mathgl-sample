PROCS['tiles'] = proc do
  a = MathGL::MglData.new
  b = MathGL::MglData.new
  mgls_prepare2d(a,b)
  if !$mini
    sub_plot(1,1,0,"")
    title("TileS plot")
  end
  box()
  tile_s(a,b)
end

