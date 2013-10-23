PROCS['dew'] = proc do
  a = MathGL::MglData.new
  b = MathGL::MglData.new
  mgls_prepare2v(a,b)
  if !$mini
    sub_plot(1,1,0,"")
    title("Dew plot")
  end
  box()
  light(true)
  dew(a,b)
end

