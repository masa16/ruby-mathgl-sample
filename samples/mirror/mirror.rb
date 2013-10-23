PROCS['mirror'] = proc do
  a = MathGL::MglData.new(31,41)
  fill(a,"-pi*x*exp(-(y+1)^2-4*x^2)")
  if !$mini
    sub_plot(2,2,0)
    title("Options for coordinates")
  end
  alpha(true)
  light(true)
  rotate(40,60)
  box()
  surf(a,"r","yrange 0 1")
  surf(a,"b","yrange 0 -1")
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("Option 'meshnum'")
  rotate(40,60)
  box()
  mesh(a,"r","yrange 0 1")
  mesh(a,"b","yrange 0 -1; meshnum 5")
  sub_plot(2,2,2)
  title("Option 'alpha'")
  rotate(40,60)
  box()
  surf(a,"r","yrange 0 1; alpha 0.7")
  surf(a,"b","yrange 0 -1; alpha 0.3")
  sub_plot(2,2,3,"<_")
  title("Option 'legend'")
  fplot("x^3","r","legend 'y = x^3'")
  fplot("cos(pi*x)","b","legend 'y = cos \\pi x'")
  box()
  axis()
  legend(2,"")
end

