PROCS['densa'] = proc do
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  if !$mini
    title("Dens3 sample")
  end
  rotate(50,60)
  alpha(true)
  set_alpha_def(0.7)
  set_origin(0,0,0)
  axis("_xyz")
  box()
  dens3(c,"x")
  dens3(c)
  dens3(c,"z")
end
