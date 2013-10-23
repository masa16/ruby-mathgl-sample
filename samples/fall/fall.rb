PROCS['fall'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  if !$mini
    title("Fall plot")
  end
  rotate(50,60)
  box()
  fall(a)
end
