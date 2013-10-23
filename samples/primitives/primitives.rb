PROCS['primitives'] = proc do
  sub_plot(2,2,0,"")
  title("Line, Curve, Rhomb, Ellipse","",-1.5)
  line([-1,-1],[-0.5,1],"qAI")
  curve([-0.6,-1],[1,1],[0,1],[1,1],"rA")
  rhomb([0,0.4],[1,0.9],0.2,"b#")
  rhomb([0,0],[1,0.4],0.2,"cg@")
  ellipse([0,-0.5],[1,-0.1],0.2,"u#")
  ellipse([0,-1],[1,-0.6],0.2,"m@")
  mark([0,-0.5],"*")
  mark([1,-0.1],"*")
  light(true)
  sub_plot(2,2,1)
  title("Face[xyz]")
  rotate(50,60)
  box()
  face_x([1,0,-1],1,1,"r")
  face_y([-1,-1,-1],1,1,"g")
  face_z([1,-1,-1],-1,1,"b")
  face([-1,-1,1],[-1,1,1],[1,-1,0],[1,1,1],"bmgr")
  sub_plot(2,2,3,"")
  title("Cone")
  cone([-0.7,-0.3],[-0.7,0.7,0.5],0.2,0.1,"b")
  puts([-0.7,-0.7],"no edges\n(default)")
  cone([0,-0.3],[0,0.7,0.5],0.2,0.1,"g@")
  puts([0,-0.7],"with edges\n('\\@' style)")
  cone([0.7,-0.3],[0.7,0.7,0.5],0.2,0,"ry")
  puts([0.7,-0.7],"'arrow' with\ngradient")
  sub_plot(2,2,2,"")
  title("Sphere and Drop")
  alpha(false)
  puts([-0.9,0.4],"sh=0")
  ball([-0.9,0,1],'k')
  drop([-0.9,0],[0,1],0.5,"r",0)
  puts([-0.3,0.6],"sh=0.33")
  ball([-0.3,0,1],'k')
  drop([-0.3,0],[0,1],0.5,"r",0.33)
  puts([0.3,0.8],"sh=0.67")
  ball([0.3,0,1],'k')
  drop([0.3,0],[0,1],0.5,"r",0.67)
  puts([0.9,1],"sh=1")
  ball([0.9,0,1],'k')
  drop([0.9,0],[0,1],0.5,"r",1)
  line([-0.9,0,1],[0.9,0,1],"b")
  puts([-0.9,-1.1],"asp=0.33")
  drop([-0.9,-0.7],[0,1],0.5,"b",0,0.33)
  puts([-0.3,-1.1],"asp=0.67")
  drop([-0.3,-0.7],[0,1],0.5,"b",0,0.67)
  puts([0.3,-1.1],"asp=1")
  drop([0.3,-0.7],[0,1],0.5,"b",0,1)
  puts([0.9,-1.1],"asp=1.5")
  drop([0.9,-0.7],[0,1],0.5,"b",0,1.5)
end

