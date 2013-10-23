PROCS['triplot'] = proc do
  q = [0,1,2,3, 4,5,6,7, 0,2,4,6, 1,3,5,7, 0,4,1,5, 2,6,3,7]
  xc = [-1,1,-1,1,-1,1,-1,1]
  yc = [-1,-1,1,1,-1,-1,1,1]
  zc = [-1,-1,-1,-1,1,1,1,1]
  qq = MathGL::MglData.new(q,6,4)
  xx = MathGL::MglData.new(xc)
  yy = MathGL::MglData.new(yc)
  zz = MathGL::MglData.new(zc)
  light(true)
  sub_plot(2,2,0)
  title("QuadPlot sample")
  rotate(50,60)
  quad_plot(qq,xx,yy,zz,"yr")
  quad_plot(qq,xx,yy,zz,"k#")
  sub_plot(2,2,2)
  title("QuadPlot coloring")
  rotate(50,60)
  quad_plot(qq,xx,yy,zz,yy,"yr")
  quad_plot(qq,xx,yy,zz,"k#")
  t = [0,1,2, 0,1,3, 0,2,3, 1,2,3]
  xt = [-1,1,0,0]
  yt = [-1,-1,1,0]
  zt = [-1,-1,-1,1]
  tt = MathGL::MglData.new(t,4,3)
  uu = MathGL::MglData.new(xt)
  vv = MathGL::MglData.new(yt)
  ww = MathGL::MglData.new(zt)
  sub_plot(2,2,1)
  title("TriPlot sample")
  rotate(50,60)
  tri_plot(tt,uu,vv,ww,"b")
  tri_plot(tt,uu,vv,ww,"k#")
  sub_plot(2,2,3)
  title("TriPlot coloring")
  rotate(50,60)
  tri_plot(tt,uu,vv,ww,vv,"cb")
  tri_plot(tt,uu,vv,ww,"k#")
  tri_cont(tt,uu,vv,ww,"B")
end

