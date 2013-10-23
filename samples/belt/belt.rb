PROCS['belt'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  if !$mini
    title("Belt plot")
  end
  rotate(50,60)
  box()
  belt(a)
end

