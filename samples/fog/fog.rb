PROCS['fog'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  if !$mini
    title("Fog sample")
  end
  light(true)
  rotate(50,60)
  fog(1)
  box()
  surf(a)
end

