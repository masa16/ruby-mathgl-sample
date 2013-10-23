PROCS['several_light'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  if !$mini
    title("Several light sources")
  end
  rotate(50,60)
  light(true)
  add_light(1,[0,1,0],'c')
  add_light(2,[1,0,0],'y')
  add_light(3,[0,-1,0],'m')
  box()
  surf(a,"h")
end
