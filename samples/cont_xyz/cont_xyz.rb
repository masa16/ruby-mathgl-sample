PROCS['cont_xyz'] = proc do
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  if !$mini
    title("Cont[XYZ] sample")
  end
  rotate(50,60)
  box()
  cont_x(c.sum("x"),"",-1)
  cont_y(c.sum("y"),"",1)
  cont_z(c.sum("z"),"",-1)
end
