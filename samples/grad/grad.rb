PROCS['grad'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  if !$mini
    sub_plot(1,1,0,"")
    title("Grad plot")
  end
  box()
  grad(a)
  dens(a,"{u8}w{q8}")
end
