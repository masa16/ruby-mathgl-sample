PROCS['surfc'] = proc do
  a = MathGL::MglData.new
  b = MathGL::MglData.new
  mgls_prepare2d(a,b)
  if !$mini
    title("SurfC plot")
  end
  rotate(50,60)
  light(true)
  box()
  surf_c(a,b)
end

