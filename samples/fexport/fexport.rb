PROCS['fexport'] = proc do
  sub_plot(3,2,0)
  y = 0.95
  d=0.3
  x0=0.2
  x1=0.5
  x2=0.6
  line([x0,1-0*d],[x1,1-0*d],"k-")
  puts([x2,y-0*d],"Solid '-'",":rL")
  line([x0,1-1*d],[x1,1-1*d],"k|")
  puts([x2,y-1*d],"Long Dash '|'",":rL")
  line([x0,1-2*d],[x1,1-2*d],"k;")
  puts([x2,y-2*d],"Dash ';'",":rL")
  line([x0,1-3*d],[x1,1-3*d],"k=")
  puts([x2,y-3*d],"Small dash '='",":rL")
  line([x0,1-4*d],[x1,1-4*d],"kj")
  puts([x2,y-4*d],"Dash-dot 'j'",":rL")
  line([x0,1-5*d],[x1,1-5*d],"ki")
  puts([x2,y-5*d],"Small dash-dot 'i'",":rL")
  line([x0,1-6*d],[x1,1-6*d],"k:")
  puts([x2,y-6*d],"Dots ':'",":rL")
  line([x0,1-7*d],[x1,1-7*d],"k ")
  puts([x2,y-7*d],"None ' '",":rL")
  d=0.25
  x1=-1
  x0=-0.8
  y = -0.05
  mark([x1,5*d],"k.")
  puts([x0,y+5*d],"'.'",":rL")
  mark([x1,4*d],"k+")
  puts([x0,y+4*d],"'+'",":rL")
  mark([x1,3*d],"kx")
  puts([x0,y+3*d],"'x'",":rL")
  mark([x1,2*d],"k*")
  puts([x0,y+2*d],"'*'",":rL")
  mark([x1,d],"ks")
  puts([x0,y+d],"'s'",":rL")
  mark([x1,0],"kd")
  puts([x0,y],"'d'",":rL")
  mark([x1,-d,0],"ko")
  puts([x0,y-d],"'o'",":rL")
  mark([x1,-2*d,0],"k^")
  puts([x0,y-2*d],"'\\^'",":rL")
  mark([x1,-3*d,0],"kv")
  puts([x0,y-3*d],"'v'",":rL")
  mark([x1,-4*d,0],"k<")
  puts([x0,y-4*d],"'<'",":rL")
  mark([x1,-5*d,0],"k>")
  puts([x0,y-5*d],"'>'",":rL")
  d=0.25
  x1=-0.5
  x0=-0.3
  y = -0.05
  mark([x1,5*d],"k#.")
  puts([x0,y+5*d],"'\\#.'",":rL")
  mark([x1,4*d],"k#+")
  puts([x0,y+4*d],"'\\#+'",":rL")
  mark([x1,3*d],"k#x")
  puts([x0,y+3*d],"'\\#x'",":rL")
  mark([x1,2*d],"k#*")
  puts([x0,y+2*d],"'\\#*'",":rL")
  mark([x1,d],"k#s")
  puts([x0,y+d],"'\\#s'",":rL")
  mark([x1,0],"k#d")
  puts([x0,y],"'\\#d'",":rL")
  mark([x1,-d,0],"k#o")
  puts([x0,y-d],"'\\#o'",":rL")
  mark([x1,-2*d,0],"k#^")
  puts([x0,y-2*d],"'\\#\\^'",":rL")
  mark([x1,-3*d,0],"k#v")
  puts([x0,y-3*d],"'\\#v'",":rL")
  mark([x1,-4*d,0],"k#<")
  puts([x0,y-4*d],"'\\#<'",":rL")
  mark([x1,-5*d,0],"k#>")
  puts([x0,y-5*d],"'\\#>'",":rL")
  sub_plot(3,2,1)
  a = 0.1
  b = 0.4
  c = 0.5
  line([a,1],[b,1],"k-A")
  puts([c,1],"Style 'A' or 'A\\_'",":rL")
  line([a,0.8],[b,0.8],"k-V")
  puts([c,0.8],"Style 'V' or 'V\\_'",":rL")
  line([a,0.6],[b,0.6],"k-K")
  puts([c,0.6],"Style 'K' or 'K\\_'",":rL")
  line([a,0.4],[b,0.4],"k-I")
  puts([c,0.4],"Style 'I' or 'I\\_'",":rL")
  line([a,0.2],[b,0.2],"k-D")
  puts([c,0.2],"Style 'D' or 'D\\_'",":rL")
  line([a,0],[b,0],"k-S")
  puts([c,0],"Style 'S' or 'S\\_'",":rL")
  line([a,-0.2],[b,-0.2],"k-O")
  puts([c,-0.2],"Style 'O' or 'O\\_'",":rL")
  line([a,-0.4],[b,-0.4],"k-T")
  puts([c,-0.4],"Style 'T' or 'T\\_'",":rL")
  line([a,-0.6],[b,-0.6],"k-_")
  puts([c,-0.6],"Style '\\_' or none",":rL")
  line([a,-0.8],[b,-0.8],"k-AS")
  puts([c,-0.8],"Style 'AS'",":rL")
  line([a,-1],[b,-1],"k-_A")
  puts([c,-1],"Style '\\_A'",":rL")
  a=-1
  b=-0.7
  c=-0.6
  line([a,1],[b,1],"kAA")
  puts([c,1],"Style 'AA'",":rL")
  line([a,0.8],[b,0.8],"kVV")
  puts([c,0.8],"Style 'VV'",":rL")
  line([a,0.6],[b,0.6],"kKK")
  puts([c,0.6],"Style 'KK'",":rL")
  line([a,0.4],[b,0.4],"kII")
  puts([c,0.4],"Style 'II'",":rL")
  line([a,0.2],[b,0.2],"kDD")
  puts([c,0.2],"Style 'DD'",":rL")
  line([a,0],[b,0],"kSS")
  puts([c,0],"Style 'SS'",":rL")
  line([a,-0.2],[b,-0.2],"kOO")
  puts([c,-0.2],"Style 'OO'",":rL")
  line([a,-0.4],[b,-0.4],"kTT")
  puts([c,-0.4],"Style 'TT'",":rL")
  line([a,-0.6],[b,-0.6],"k-__")
  puts([c,-0.6],"Style '\\_\\_'",":rL")
  line([a,-0.8],[b,-0.8],"k-VA")
  puts([c,-0.8],"Style 'VA'",":rL")
  line([a,-1],[b,-1],"k-AV")
  puts([c,-1],"Style 'AV'",":rL")
  sub_plot(3,2,2)
  face_z([-1,	-1], 0.4, 0.3, "L#")
  puts([-0.8,-0.9], "", "w:C", -1.4)
  face_z([-0.6,-1], 0.4, 0.3, "E#")
  puts([-0.4,-0.9], "E", "w:C", -1.4)
  face_z([-0.2,-1], 0.4, 0.3, "N#")
  puts([0,  -0.9], "N", "w:C", -1.4)
  face_z([0.2,	-1], 0.4, 0.3, "U#")
  puts([0.4,-0.9], "U", "w:C", -1.4)
  face_z([0.6,	-1], 0.4, 0.3, "Q#")
  puts([0.8,-0.9], "Q", "w:C", -1.4)
  face_z([-1,	-0.7], 0.4, 0.3, "l#")
  puts([-0.8,-0.6], "l", "k:C", -1.4)
  face_z([-0.6,-0.7], 0.4, 0.3, "e#")
  puts([-0.4,-0.6], "e", "k:C", -1.4)
  face_z([-0.2,-0.7], 0.4, 0.3, "n#")
  puts([0,  -0.6], "n", "k:C", -1.4)
  face_z([0.2,	-0.7], 0.4, 0.3, "u#")
  puts([0.4,-0.6], "u", "k:C", -1.4)
  face_z([0.6,	-0.7], 0.4, 0.3, "q#")
  puts([0.8,-0.6], "q", "k:C", -1.4)
  face_z([-1,	-0.4], 0.4, 0.3, "C#")
  puts([-0.8,-0.3], "C", "w:C", -1.4)
  face_z([-0.6,-0.4], 0.4, 0.3, "M#")
  puts([-0.4,-0.3], "M", "w:C", -1.4)
  face_z([-0.2,-0.4], 0.4, 0.3, "Y#")
  puts([0,  -0.3], "Y", "w:C", -1.4)
  face_z([0.2,	-0.4], 0.4, 0.3, "k#")
  puts([0.4,-0.3], "k", "w:C", -1.4)
  face_z([0.6,	-0.4], 0.4, 0.3, "P#")
  puts([0.8,-0.3], "P", "w:C", -1.4)
  face_z([-1,	-0.1], 0.4, 0.3, "c#")
  puts([-0.8, 0], "c", "k:C", -1.4)
  face_z([-0.6,-0.1], 0.4, 0.3, "m#")
  puts([-0.4, 0], "m", "k:C", -1.4)
  face_z([-0.2,-0.1], 0.4, 0.3, "y#")
  puts([0,   0], "y", "k:C", -1.4)
  face_z([0.2,	-0.1], 0.4, 0.3, "w#")
  puts([0.4, 0], "w", "k:C", -1.4)
  face_z([0.6,	-0.1], 0.4, 0.3, "p#")
  puts([0.8, 0], "p", "k:C", -1.4)
  face_z([-1,	0.2], 0.4, 0.3, "B#")
  puts([-0.8, 0.3], "B", "w:C", -1.4)
  face_z([-0.6,0.2], 0.4, 0.3, "G#")
  puts([-0.4, 0.3], "G", "w:C", -1.4)
  face_z([-0.2,0.2], 0.4, 0.3, "R#")
  puts([0,   0.3], "R", "w:C", -1.4)
  face_z([0.2,	0.2], 0.4, 0.3, "H#")
  puts([0.4, 0.3], "H", "w:C", -1.4)
  face_z([0.6,	0.2], 0.4, 0.3, "W#")
  puts([0.8, 0.3], "W", "w:C", -1.4)
  face_z([-1,	0.5], 0.4, 0.3, "b#")
  puts([-0.8, 0.6], "b", "k:C", -1.4)
  face_z([-0.6,0.5], 0.4, 0.3, "g#")
  puts([-0.4, 0.6], "g", "k:C", -1.4)
  face_z([-0.2,0.5], 0.4, 0.3, "r#")
  puts([0,   0.6], "r", "k:C", -1.4)
  face_z([0.2,	0.5], 0.4, 0.3, "h#")
  puts([0.4, 0.6], "h", "k:C", -1.4)
  face_z([0.6,	0.5], 0.4, 0.3, "w#")
  puts([0.8, 0.6], "w", "k:C", -1.4)
  face_z([-1,	0.8], 0.4, 0.3, "{r1}#")
  puts([-0.8, 0.9], "\\{r1\\}", "w:C", -1.4)
  face_z([-0.6,0.8], 0.4, 0.3, "{r3}#")
  puts([-0.4, 0.9], "\\{r3\\}", "w:C", -1.4)
  face_z([-0.2,0.8], 0.4, 0.3, "{r5}#")
  puts([0,   0.9], "\\{r5\\}", "k:C", -1.4)
  face_z([0.2,	0.8], 0.4, 0.3, "{r7}#")
  puts([0.4, 0.9], "\\{r7\\}", "k:C", -1.4)
  face_z([0.6,	0.8], 0.4, 0.3, "{r9}#")
  puts([0.8, 0.9], "\\{r9\\}", "k:C", -1.4)
  face_z([-1, -1.3], 1, 0.3, "{xff9966}#")
  puts([-0.5,-1.2], "\\{xff9966\\}", "k:C", -1.4)
  face_z([0,  -1.3], 1, 0.3, "{x83CAFF}#")
  puts([ 0.5,-1.2], "\\{x83CAFF\\}", "k:C", -1.4)
  sub_plot(3,2,3)
  stl = "r1"
  txt = "'1'"
  for i in 0...10
    txt[1]=stl[1]='%d'%i
    line([-1,0.2*i-1],[1,0.2*i-1],stl)
    puts([1.05,0.2*i-1],txt,":")
  end
  sub_plot(3,2,4)
  title("TriPlot sample")
  rotate(50,60)
  t = [0,1,2, 0,1,3, 0,2,3, 1,2,3]
  xt = [-1,1,0,0]
  yt = [-1,-1,1,0]
  zt = [-1,-1,-1,1]
  tt = MathGL::MglData.new(t,4,3)
  uu = MathGL::MglData.new(xt)
  vv = MathGL::MglData.new(yt)
  ww = MathGL::MglData.new(zt)
  tri_plot(tt,uu,vv,ww,"b")
  tri_plot(tt,uu,vv,ww,"k#")
  sub_plot(3,2,5)
  r = MathGL::MglData.new(4)
  r.fill(1,4)
  set_ranges(1,4,1,4)
  axis()
  mark(r,r,"s")
  plot(r,"b")
  write_jpeg("fexport.jpg")
  write_png("fexport.png")
  write_bmp("fexport.bmp")
  write_tga("fexport.tga")
  write_eps("fexport.eps")
  write_svg("fexport.svg")
  write_gif("fexport.gif")
  write_xyz("fexport.xyz")
  write_stl("fexport.stl")
  write_off("fexport.off")
  write_tex("fexport.tex")
  write_obj("fexport.obj")
  write_prc("fexport.prc")
end

