PROCS['combined'] = proc do
  a = MathGL::MglData.new
  b = MathGL::MglData.new
  d = MathGL::MglData.new
  mgls_prepare2v(a,b)
  d = a
  for j in 0...a.ny
    for i in 0...a.nx
      d.set_val(Math.hypot(a.get_val(i,j),b.get_val(i,j)), i,j)
    end
  end
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  v = MathGL::MglData.new(10)
  v.fill(-0.5,1)
  sub_plot(2,2,1,"")
  title("Flow + Dens")
  flow(a,b,"br")
  dens(d)
  box()
  sub_plot(2,2,0)
  title("Surf + Cont")
  rotate(50,60)
  light(true)
  surf(a)
  cont(a,"y")
  box()
  sub_plot(2,2,2)
  title("Mesh + Cont")
  rotate(50,60)
  box()
  mesh(a)
  cont(a,"_")
  sub_plot(2,2,3)
  title("Surf3 + ContF3")
  rotate(50,60)
  box()
  cont_f3(v,c,"z",0)
  cont_f3(v,c,"x")
  cont_f3(v,c)
  set_cut_box([0,-1,-1], [1,0,1.1])
  cont_f3(v,c,"z",c.nz-1)
  surf3(-0.5,c)
end
