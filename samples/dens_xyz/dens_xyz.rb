PROCS['dens_xyz'] = proc do
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  if !$mini
    title("Dens[XYZ] sample")
  end
  rotate(50,60)
  box()
  dens_x(c.sum("x"),"",-1)
  dens_y(c.sum("y"),"",1)
  dens_z(c.sum("z"),"",-1)
end
