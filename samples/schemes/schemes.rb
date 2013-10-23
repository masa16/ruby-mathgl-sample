PROCS['schemes'] = proc do
  a = MathGL::MglData.new(256,2)
  a.fill(-1,1)
  sub_plot(2,10,0,NULL,0.2)
  dens(a,"kw")
  puts(0.07, 0.92, "'kw'", "A")
  sub_plot(2,10,1,NULL,0.2)
  dens(a,"wk")
  puts(0.57, 0.92, "'wk'", "A")
  sub_plot(2,10,2,NULL,0.2)
  dens(a,"kHCcw")
  puts(0.07, 0.82, "'kHCcw'", "A")
  sub_plot(2,10,3,NULL,0.2)
  dens(a,"kBbcw")
  puts(0.57, 0.82, "'kBbcw'", "A")
  sub_plot(2,10,4,NULL,0.2)
  dens(a,"kRryw")
  puts(0.07, 0.72, "'kRryw'", "A")
  sub_plot(2,10,5,NULL,0.2)
  dens(a,"kGgew")
  puts(0.57, 0.72, "'kGgew'", "A")
  sub_plot(2,10,6,NULL,0.2)
  dens(a,"BbwrR")
  puts(0.07, 0.62, "'BbwrR'", "A")
  sub_plot(2,10,7,NULL,0.2)
  dens(a,"BbwgG")
  puts(0.57, 0.62, "'BbwgG'", "A")
  sub_plot(2,10,8,NULL,0.2)
  dens(a,"GgwmM")
  puts(0.07, 0.52, "'GgwmM'", "A")
  sub_plot(2,10,9,NULL,0.2)
  dens(a,"UuwqR")
  puts(0.57, 0.52, "'UuwqR'", "A")
  sub_plot(2,10,10,NULL,0.2)
  dens(a,"QqwcC")
  puts(0.07, 0.42, "'QqwcC'", "A")
  sub_plot(2,10,11,NULL,0.2)
  dens(a,"CcwyY")
  puts(0.57, 0.42, "'CcwyY'", "A")
  sub_plot(2,10,12,NULL,0.2)
  dens(a,"bcwyr")
  puts(0.07, 0.32, "'bcwyr'", "A")
  sub_plot(2,10,13,NULL,0.2)
  dens(a,"bwr")
  puts(0.57, 0.32, "'bwr'", "A")
  sub_plot(2,10,14,NULL,0.2)
  dens(a,"BbcyrR")
  puts(0.07, 0.22, "'BbcyrR'", "A")
  sub_plot(2,10,15,NULL,0.2)
  dens(a,"UbcyqR")
  puts(0.57, 0.22, "'UbcyqR'", "A")
  sub_plot(2,10,16,NULL,0.2)
  dens(a,"BbcwyrR")
  puts(0.07, 0.12, "'BbcwyrR'", "A")
  sub_plot(2,10,17,NULL,0.2)
  dens(a,"bgr")
  puts(0.57, 0.12, "'bgr'", "A")
  sub_plot(2,10,18,NULL,0.2)
  dens(a,"BbcyrR|")
  puts(0.07, 0.02, "'BbcyrR|'", "A")
  sub_plot(2,10,19,NULL,0.2)
  dens(a,"b{g,0.3}r")
  puts(0.57, 0.02, "'b\\{g,0.3\\}r'", "A")
end
