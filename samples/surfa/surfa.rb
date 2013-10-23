PROCS['surfa'] = proc do
  a = MathGL::MglData.new
  b = MathGL::MglData.new
  mgls_prepare2d(a,b)
  if !$mini
    title("SurfA plot")
  end
  rotate(50,60)
  alpha(true)
  light(true)
  box()
  surf_a(a,b)
end

