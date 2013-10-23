# Ruby/MathGL sample codes
## alpha.rb

```ruby
PROCS['alpha'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  sub_plot(2,2,0)
  title("default")
  rotate(50,60)
  box()
  surf(a)
  sub_plot(2,2,1)
  title("light on")
  rotate(50,60)
  box()
  light(true)
  surf(a)
  sub_plot(2,2,3)
  title("alpha on; light on")
  rotate(50,60)
  box()
  alpha(true)
  surf(a)
  sub_plot(2,2,2)
  title("alpha on")
  rotate(50,60)
  box()
  light(false)
  surf(a)
end


```
![image of alpha.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/alpha/alpha.png)

## area.rb

```ruby
PROCS['area'] = proc do
  y = MathGL::MglData.new
  mgls_prepare1d(y)
  set_origin(0,0,0)
  if !$mini
    sub_plot(2,2,0,"")
    title("Area plot (default)")
  end
  box()
  area(y)
  if $mini
    return
  end
  sub_plot(2,2,1,"")
  title("2 colors")
  box()
  area(y,"cbgGyr")
  sub_plot(2,2,2,"")
  title("'!' style")
  box()
  area(y,"!")
  sub_plot(2,2,3)
  title("3d variant")
  rotate(50,60)
  box()
  yc = MathGL::MglData.new(30)
  xc = MathGL::MglData.new(30)
  z = MathGL::MglData.new(30)
  z.modify("2*x-1")
  yc.modify("sin(pi*(2*x-1))")
  xc.modify("cos(pi*2*x-pi)")
  area(xc,yc,z,"r")
  yc.modify("-sin(pi*(2*x-1))")
  area(xc,yc,z,"b#")
end


```
![image of area.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/area/area.png)

## aspect.rb

```ruby
PROCS['aspect'] = proc do
  sub_plot(2,2,0)
  box()
  puts([-1,1.1],"Just box",":")
  in_plot(0.2,0.5,0.7,1,false)
  box()
  puts([0,1.2],"InPlot example")
  sub_plot(2,2,1)
  title("Rotate only")
  rotate(50,60)
  box()
  sub_plot(2,2,2)
  title("Rotate and Aspect")
  rotate(50,60)
  aspect(1,1,2)
  box()
  sub_plot(2,2,3)
  title("Aspect inp other direction")
  rotate(50,60)
  aspect(1,2,2)
  box()
end


```
![image of aspect.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/aspect/aspect.png)

## axial.rb

```ruby
PROCS['axial'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  if !$mini
    sub_plot(2,2,0)
    title("Axial plot (default)")
  end
  light(true)
  alpha(true)
  rotate(50,60)
  box()
  axial(a)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("'x' style; '.'style")
  rotate(50,60)
  box()
  axial(a,"x.")
  sub_plot(2,2,2)
  title("'z' style")
  rotate(50,60)
  box()
  axial(a,"z")
  sub_plot(2,2,3)
  title("'\\#' style")
  rotate(50,60)
  box()
  axial(a,"#")
end


```
![image of axial.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/axial/axial.png)

## axis.rb

```ruby
PROCS['axis'] = proc do
  sub_plot(2,2,0)
  title("Axis origin, Grid")
  set_origin(0,0)
  axis()
  grid()
  fplot("x^3")
  sub_plot(2,2,1)
  title("2 axis")
  set_ranges(-1,1,-1,1)
  set_origin(-1,-1,-1)
  axis()
  label('y',"axis 1",0)
  fplot("sin(pi*x)","r2")
  set_ranges(0,1,0,1)
  set_origin(1,1,1)
  axis()
  label('y',"axis 2",0)
  fplot("cos(pi*x)")
  sub_plot(2,2,3)
  title("More axis")
  set_origin(NAN,NAN)
  set_range('x',-1,1)
  axis()
  label('x',"x",0)
  label('y',"y_1",0)
  fplot("x^2","k")
  set_ranges(-1,1,-1,1)
  set_origin(-1.3,-1)
  axis("y","r")
  label('y',"#r{y_2}",0.2)
  fplot("x^3","r")
  sub_plot(2,2,2)
  title("4 segments, inverted axis")
  set_origin(0,0)
  in_plot(0.5,1,0.5,1)
  set_ranges(0,10,0,2)
  axis()
  fplot("sqrt(x/2)")
  label('x',"W",1)
  label('y',"U",1)
  in_plot(0,0.5,0.5,1)
  set_ranges(1,0,0,2)
  axis("x")
  fplot("sqrt(x)+x^3")
  label('x',"\\tau",-1)
  in_plot(0.5,1,0,0.5)
  set_ranges(0,10,4,0)
  axis("y")
  fplot("x/4")
  label('y',"",-1)
  in_plot(0,0.5,0,0.5)
  set_ranges(1,0,4,0)
  fplot("4*x^2")
end


```
![image of axis.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/axis/axis.png)

## barh.rb

```ruby
PROCS['barh'] = proc do
  ys = MathGL::MglData.new(10,3)
  ys.modify("0.8*sin(pi*(2*x+y/2))+0.2*rnd")
  set_origin(0,0,0)
  if !$mini
    sub_plot(2,2,0,"")
    title("Barh plot (default)")
  end
  box()
  barh(ys)
  if $mini
    return
  end
  sub_plot(2,2,1,"")
  title("2 colors")
  box()
  barh(ys,"cbgGyr")
  set_ranges(-3,3,-1,1)
  sub_plot(2,2,2,"")
  title("'a' style")
  box()
  barh(ys,"a")
  sub_plot(2,2,3,"")
  title("'f' style")
  box()
  barh(ys,"f")
end


```
![image of barh.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/barh/barh.png)

## bars.rb

```ruby
PROCS['bars'] = proc do
  ys = MathGL::MglData.new(10,3)
  ys.modify("0.8*sin(pi*(2*x+y/2))+0.2*rnd")
  set_origin(0,0,0)
  if !$mini
    sub_plot(3,2,0,"")
    title("Bars plot (default)")
  end
  box()
  bars(ys)
  if $mini
    return
  end
  sub_plot(3,2,1,"")
  title("2 colors")
  box()
  bars(ys,"cbgGyr")
  sub_plot(3,2,4,"")
  title("'\\#' style")
  box()
  bars(ys,"#")
  sub_plot(3,2,5)
  title("3d variant")
  rotate(50,60)
  box()
  yc = MathGL::MglData.new(30)
  xc = MathGL::MglData.new(30)
  z = MathGL::MglData.new(30)
  z.modify("2*x-1")
  yc.modify("sin(pi*(2*x-1))")
  xc.modify("cos(pi*2*x-pi)")
  bars(xc,yc,z,"r")
  set_ranges(-1,1,-3,3)
  sub_plot(3,2,2,"")
  title("'a' style")
  box()
  bars(ys,"a")
  sub_plot(3,2,3,"")
  title("'f' style")
  box()
  bars(ys,"f")
end


```
![image of bars.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/bars/bars.png)

## belt.rb

```ruby
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


```
![image of belt.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/belt/belt.png)

## box.rb

```ruby
PROCS['box'] = proc do
  sub_plot(2,2,0)
  title("Box (default)")
  rotate(50,60)
  box()
  sub_plot(2,2,1)
  title("colored")
  rotate(50,60)
  box("r")
  sub_plot(2,2,2)
  title("with faces")
  rotate(50,60)
  box("@")
  sub_plot(2,2,3)
  title("both")
  rotate(50,60)
  box("@cm")
end


```
![image of box.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/box/box.png)

## boxplot.rb

```ruby
PROCS['boxplot'] = proc do
  a = MathGL::MglData.new(10,7)
  a.modify("(2*rnd-1)^3/2")
  if !$mini
    sub_plot(1,1,0,"")
    title("Boxplot plot")
  end
  box()
  box_plot(a)
end


```
![image of boxplot.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/boxplot/boxplot.png)

## boxs.rb

```ruby
PROCS['boxs'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  set_origin(0,0,0)
  light(true)
  if !$mini
    sub_plot(2,2,0)
    title("Boxs plot (default)")
  end
  rotate(40,60)
  box()
  boxs(a)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("'\\@' style")
  rotate(50,60)
  box()
  boxs(a,"@")
  sub_plot(2,2,2)
  title("'\\#' style")
  rotate(50,60)
  box()
  boxs(a,"#")
  sub_plot(2,2,3)
  title("compare with Tile")
  rotate(50,60)
  box()
  tile(a)
end


```
![image of boxs.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/boxs/boxs.png)

## candle.rb

```ruby
PROCS['candle'] = proc do
  y = MathGL::MglData.new(30)
  fill(y,"sin(pi*x/2)^2")
  y1 = MathGL::MglData.new(30)
  fill(y1,"v/2",y)
  y2 = MathGL::MglData.new(30)
  fill(y2,"(1+v)/2",y)
  if !$mini
    sub_plot(1,1,0,"")
    title("Candle plot (default)")
  end
  set_range('y',0,1)
  box()
  candle(y,y1,y2)
end


```
![image of candle.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/candle/candle.png)

## chart.rb

```ruby
PROCS['chart'] = proc do
  ch = MathGL::MglData.new(7,2)
  for i in 0...7*2
    ch.set_val(mgl_rnd()+0.1,i)
  end
  if !$mini
    sub_plot(2,2,0)
    title("Chart plot (default)")
  end
  light(true)
  rotate(50,60)
  box()
  chart(ch)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("'\\#' style")
  rotate(50,60)
  box()
  chart(ch,"#")
  sub_plot(2,2,2)
  title("Pie chart; ' ' color")
  set_func("(y+1)/2*cos(pi*x)","(y+1)/2*sin(pi*x)","")
  rotate(50,60)
  box()
  chart(ch,"bgr cmy#")
  sub_plot(2,2,3)
  title("Ring chart; ' ' color")
  set_func("(y+2)/3*cos(pi*x)","(y+2)/3*sin(pi*x)","")
  rotate(50,60)
  box()
  chart(ch,"bgr cmy#")
end


```
![image of chart.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/chart/chart.png)

## cloud.rb

```ruby
PROCS['cloud'] = proc do
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  if !$mini
    sub_plot(2,2,0)
    title("Cloud plot")
  end
  rotate(50,60)
  alpha(true)
  box()
  cloud(c,"wyrRk")
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("'!' style")
  rotate(50,60)
  box()
  cloud(c,"!wyrRk")
  sub_plot(2,2,2)
  title("'.' style")
  rotate(50,60)
  box()
  cloud(c,".wyrRk")
  sub_plot(2,2,3)
  title("meshnum 10")
  rotate(50,60)
  box()
  cloud(c,"wyrRk","meshnum 10")
end


```
![image of cloud.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/cloud/cloud.png)

## colorbar.rb

```ruby
PROCS['colorbar'] = proc do
  sub_plot(2,2,0)
  title("Colorbar out of box")
  box()
  colorbar("<")
  colorbar(">")
  colorbar("_")
  colorbar("^")
  sub_plot(2,2,1)
  title("Colorbar near box")
  box()
  colorbar("<I")
  colorbar(">I")
  colorbar("_I")
  colorbar("^I")
  sub_plot(2,2,2)
  title("manual colors")
  a = MathGL::MglData.new
  v = MathGL::MglData.new
  mgls_prepare2d(a,nil,v)
  box()
  cont_d(v,a)
  colorbar(v,"<")
  colorbar(v,">")
  colorbar(v,"_")
  colorbar(v,"^")
  sub_plot(2,2,3)
  title(" ")
  puts([-0.5,1.55],"Color positions",":C",-2)
  colorbar("bwr>",0.25,0)
  puts([-0.9,1.2],"Default")
  colorbar("b{w,0.3}r>",0.5,0)
  puts([-0.1,1.2],"Manual")
  puts([1,1.55],"log-scale",":C",-2)
  set_range('c',0.01,1e3)
  colorbar(">",0.75,0)
  puts([0.65,1.2],"Normal scale")
  set_func("","","","lg(c)")
  colorbar(">")
  puts([1.35,1.2],"Log scale")
end


```
![image of colorbar.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/colorbar/colorbar.png)

## combined.rb

```ruby
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


```
![image of combined.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/combined/combined.png)

## cones.rb

```ruby
PROCS['cones'] = proc do
  ys = MathGL::MglData.new(10,3)
  ys.modify("0.8*sin(pi*(2*x+y/2))+0.2*rnd")
  light(true)
  set_origin(0,0,0)
  if !$mini
    sub_plot(2,2,0)
    title("Cones plot")
  end
  rotate(50,60)
  box()
  cones(ys)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("2 colors")
  rotate(50,60)
  box()
  cones(ys,"cbgGyr")
  sub_plot(2,2,2)
  title("'\\#' style")
  rotate(50,60)
  box()
  cones(ys,"#")
  sub_plot(2,2,3)
  title("'a' style")
  set_range('z',-2,2)
  rotate(50,60)
  box()
  cones(ys,"a")
end


```
![image of cones.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/cones/cones.png)

## cont.rb

```ruby
PROCS['cont'] = proc do
  a = MathGL::MglData.new
  v = MathGL::MglData.new(5)
  mgls_prepare2d(a)
  v.set_val(-0.5,0)
  v.set_val(-0.15,1)
  v.set_val(0,2)
  v.set_val(0.15,3)
  v.set_val(0.5,4)
  if !$mini
    sub_plot(2,2,0)
    title("Cont plot (default)")
  end
  rotate(50,60)
  box()
  cont(a)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("manual levels")
  rotate(50,60)
  box()
  cont(v,a)
  sub_plot(2,2,2)
  title("'\\_' style")
  rotate(50,60)
  box()
  cont(a,"_")
  sub_plot(2,2,3,"")
  title("'t' style")
  box()
  cont(a,"t")
end


```
![image of cont.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/cont/cont.png)

## cont_xyz.rb

```ruby
PROCS['cont_xyz'] = proc do
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  if !$mini
    title("Cont[XYZ] sample")
  end
  rotate(50,60)
  box()
  cont_x(c.sum("x"),"",-1)
  cont_y(c.sum("y"),"",1)
  cont_z(c.sum("z"),"",-1)
end


```
![image of cont_xyz.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/cont_xyz/cont_xyz.png)

## conta.rb

```ruby
PROCS['conta'] = proc do
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  if !$mini
    title("Cont3 sample")
  end
  rotate(50,60)
  box()
  cont3(c,"x")
  cont3(c)
  cont3(c,"z")
end


```
![image of conta.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/conta/conta.png)

## contd.rb

```ruby
PROCS['contd'] = proc do
  a = MathGL::MglData.new
  v = MathGL::MglData.new(5)
  a1 = MathGL::MglData.new(30,40,3)
  mgls_prepare2d(a)
  v.set_val(-0.5,0)
  v.set_val(-0.15,1)
  v.set_val(0,2)
  v.set_val(0.15,3)
  v.set_val(0.5,4)
  fill(a1,"0.6*sin(2*pi*x+pi*(z+1)/2)*sin(3*pi*y+pi*z) + 0.4*cos(3*pi*(x*y)+pi*(z+1)^2/2)")
  if !$mini
    sub_plot(2,2,0)
    title("ContD plot (default)")
  end
  rotate(50,60)
  box()
  cont_d(a)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("manual levels")
  rotate(50,60)
  box()
  cont_d(v,a)
  sub_plot(2,2,2)
  title("'\\_' style")
  rotate(50,60)
  box()
  cont_d(a,"_")
  sub_plot(2,2,3)
  title("several slices")
  rotate(50,60)
  box()
  cont_d(a1)
end


```
![image of contd.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/contd/contd.png)

## contf.rb

```ruby
PROCS['contf'] = proc do
  a = MathGL::MglData.new
  v = MathGL::MglData.new(5)
  a1 = MathGL::MglData.new(30,40,3)
  mgls_prepare2d(a)
  v.set_val(-0.5,0)
  v.set_val(-0.15,1)
  v.set_val(0,2)
  v.set_val(0.15,3)
  v.set_val(0.5,4)
  fill(a1,"0.6*sin(2*pi*x+pi*(z+1)/2)*sin(3*pi*y+pi*z) + 0.4*cos(3*pi*(x*y)+pi*(z+1)^2/2)")
  if !$mini
    sub_plot(2,2,0)
    title("ContF plot (default)")
  end
  rotate(50,60)
  box()
  cont_f(a)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("manual levels")
  rotate(50,60)
  box()
  cont_f(v,a)
  sub_plot(2,2,2)
  title("'\\_' style")
  rotate(50,60)
  box()
  cont_f(a,"_")
  sub_plot(2,2,3)
  title("several slices")
  rotate(50,60)
  box()
  cont_f(a1)
end


```
![image of contf.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/contf/contf.png)

## contf_xyz.rb

```ruby
PROCS['contf_xyz'] = proc do
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  if !$mini
    title("ContF[XYZ] sample")
  end
  rotate(50,60)
  box()
  cont_fx(c.sum("x"),"",-1)
  cont_fy(c.sum("y"),"",1)
  cont_fz(c.sum("z"),"",-1)
end


```
![image of contf_xyz.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/contf_xyz/contf_xyz.png)

## contfa.rb

```ruby
PROCS['contfa'] = proc do
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  if !$mini
    title("ContF3 sample")
  end
  rotate(50,60)
  light(true)
  box()
  cont_f3(c,"x")
  cont_f3(c)
  cont_f3(c,"z")
  cont3(c,"kx")
  cont3(c,"k")
  cont3(c,"kz")
end


```
![image of contfa.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/contfa/contfa.png)

## contv.rb

```ruby
PROCS['contv'] = proc do
  a = MathGL::MglData.new
  v = MathGL::MglData.new(5)
  mgls_prepare2d(a)
  v.set_val(-0.5,0)
  v.set_val(-0.15,1)
  v.set_val(0,2)
  v.set_val(0.15,3)
  v.set_val(0.5,4)
  if !$mini
    sub_plot(2,2,0)
    title("ContV plot (default)")
  end
  rotate(50,60)
  box()
  cont_v(a)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("manual levels")
  rotate(50,60)
  box()
  cont_v(v,a)
  sub_plot(2,2,2)
  title("'\\_' style")
  rotate(50,60)
  box()
  cont_v(a,"_")
  sub_plot(2,2,3)
  title("ContV and ContF")
  rotate(50,60)
  box()
  light(true)
  cont_v(a)
  cont_f(a)
  cont(a,"k")
end


```
![image of contv.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/contv/contv.png)

## curvcoor.rb

```ruby
PROCS['curvcoor'] = proc do
  set_origin(-1,1,-1)
  sub_plot(2,2,0)
  title("Cartesian")
  rotate(50,60)
  fplot("2*t-1","0.5","0","r2")
  axis()
  grid()
  set_func("y*sin(pi*x)","y*cos(pi*x)","")
  sub_plot(2,2,1)
  title("Cylindrical")
  rotate(50,60)
  fplot("2*t-1","0.5","0","r2")
  axis()
  grid()
  set_func("2*y*x","y*y - x*x","")
  sub_plot(2,2,2)
  title("Parabolic")
  rotate(50,60)
  fplot("2*t-1","0.5","0","r2")
  axis()
  grid()
  set_func("y*sin(pi*x)","y*cos(pi*x)","x+z")
  sub_plot(2,2,3)
  title("Spiral")
  rotate(50,60)
  fplot("2*t-1","0.5","0","r2")
  axis()
  grid()
  set_func("","","")
end


```
![image of curvcoor.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/curvcoor/curvcoor.png)

## cut.rb

```ruby
PROCS['cut'] = proc do
  a = MathGL::MglData.new
  c = MathGL::MglData.new
  v = MathGL::MglData.new(1)
  mgls_prepare2d(a)
  mgls_prepare3d(c)
  v.set_val(0.5,0)
  sub_plot(2,2,0)
  title("Cut on (default)")
  rotate(50,60)
  light(true)
  box()
  surf(a,"","zrange -1 0.5")
  sub_plot(2,2,1)
  title("Cut off")
  rotate(50,60)
  box()
  surf(a,"","zrange -1 0.5; cut off")
  sub_plot(2,2,2)
  title("Cut inp box")
  rotate(50,60)
  set_cut_box([0,-1,-1], [1,0,1.1])
  alpha(true)
  box()
  surf3(c)
  set_cut_box([0], [0])
  sub_plot(2,2,3)
  title("Cut by formula")
  rotate(50,60)
  cut_off("(z>(x+0.5*y-1)^2-1) & (z>(x-0.5*y-1)^2-1)")
  box()
  surf3(c)
  cut_off("")
end


```
![image of cut.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/cut/cut.png)

## dat_diff.rb

```ruby
PROCS['dat_diff'] = proc do
  set_ranges(0,1,0,1,0,1)
  a = MathGL::MglData.new(30,40)
  a.modify("x*y")
  sub_plot(2,2,0)
  title("a(x,y)")
  rotate(60,40)
  surf(a)
  box()
  sub_plot(2,2,1)
  title("da/dx")
  rotate(60,40)
  a.diff("x")
  surf(a)
  box()
  sub_plot(2,2,2)
  title("\\int da/dx dxdy")
  rotate(60,40)
  a.integral("xy")
  surf(a)
  box()
  sub_plot(2,2,3)
  title("\\int {d^2}a/dxdy dx")
  rotate(60,40)
  a.diff2("y")
  surf(a)
  box()
end


```
![image of dat_diff.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/dat_diff/dat_diff.png)

## dat_extra.rb

```ruby
PROCS['dat_extra'] = proc do
  sub_plot(2,2,0,"")
  title("Envelop sample")
  d1 = MathGL::MglData.new(1000)
  fill(d1,"exp(-8*x^2)*sin(10*pi*x)")
  axis()
  plot(d1, "b")
  d1.envelop('x')
  plot(d1, "r")
  sub_plot(2,2,1,"")
  title("Smooth sample")
  y0 = MathGL::MglData.new(30)
  y1 = MathGL::MglData.new
  y2 = MathGL::MglData.new
  y3 = MathGL::MglData.new
  set_ranges(0,1,0,1)
  fill(y0, "0.4*sin(pi*x) + 0.3*cos(1.5*pi*x) - 0.4*sin(2*pi*x)+0.5*rnd")
  y1=y0
  y1.smooth("x3")
  y2=y0
  y2.smooth("x5")
  y3=y0
  y3.smooth("x")
  plot(y0,"{m7}:s", "legend 'none'")
  plot(y1,"r", "legend ''3' style'")
  plot(y2,"g", "legend ''5' style'")
  plot(y3,"b", "legend 'default'")
  legend()
  box()
  sub_plot(2,2,2)
  title("Sew sample")
  d2 = MathGL::MglData.new(100, 100)
  fill(d2, "mod((y^2-(1-x)^2)/2,0.1)")
  rotate(50, 60)
  light(true)
  alpha(true)
  box()
  surf(d2, "b")
  d2.sew("xy", 0.1)
  surf(d2, "r")
  sub_plot(2,2,3)
  title("Resize sample (interpolation)")
  x0 = MathGL::MglData.new(10)
  v0 = MathGL::MglData.new(10)
  x1 = MathGL::MglData.new
  v1 = MathGL::MglData.new
  fill(x0,"rnd")
  fill(v0,"rnd")
  x1 = x0.resize(100)
  v1 = v0.resize(100)
  plot(x0,v0,"b+ ")
  plot(x1,v1,"r-")
  label(x0,v0,"%n")
end


```
![image of dat_extra.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/dat_extra/dat_extra.png)

## data1.rb

```ruby
PROCS['data1'] = proc do
  a = MathGL::MglData.new(40,50,60)
  b = MathGL::MglData.new
  fill(a,"exp(-x^2-4*y^2-16*z^2)")
  light(true)
  alpha(true)
  b.set(a)
  b.diff("x")
  sub_plot(5,3,0)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.set(a)
  b.diff2("x")
  sub_plot(5,3,1)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.set(a)
  b.cum_sum("x")
  sub_plot(5,3,2)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.set(a)
  b.integral("x")
  sub_plot(5,3,3)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.mirror("x")
  sub_plot(5,3,4)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.set(a)
  b.diff("y")
  sub_plot(5,3,5)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.set(a)
  b.diff2("y")
  sub_plot(5,3,6)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.set(a)
  b.cum_sum("y")
  sub_plot(5,3,7)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.set(a)
  b.integral("y")
  sub_plot(5,3,8)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.mirror("y")
  sub_plot(5,3,9)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.set(a)
  b.diff("z")
  sub_plot(5,3,10)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.set(a)
  b.diff2("z")
  sub_plot(5,3,11)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.set(a)
  b.cum_sum("z")
  sub_plot(5,3,12)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.set(a)
  b.integral("z")
  sub_plot(5,3,13)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
  b.mirror("z")
  sub_plot(5,3,14)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(b)
end


```
![image of data1.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/data1/data1.png)

## data2.rb

```ruby
PROCS['data2'] = proc do
  a = MathGL::MglData.new(40,50,60)
  b = MathGL::MglData.new
  fill(a,"exp(-x^2-4*y^2-16*z^2)")
  light(true)
  alpha(true)
  b.set(a)
  b.sin_fft("x")
  sub_plot(5,3,0)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.cos_fft("x")
  sub_plot(5,3,1)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.hankel("x")
  sub_plot(5,3,2)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.swap("x")
  sub_plot(5,3,3)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.smooth("x")
  sub_plot(5,3,4)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.sin_fft("y")
  sub_plot(5,3,5)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.cos_fft("y")
  sub_plot(5,3,6)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.hankel("y")
  sub_plot(5,3,7)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.swap("y")
  sub_plot(5,3,8)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.smooth("y")
  sub_plot(5,3,9)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.sin_fft("z")
  sub_plot(5,3,10)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.cos_fft("z")
  sub_plot(5,3,11)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.hankel("z")
  sub_plot(5,3,12)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.swap("z")
  sub_plot(5,3,13)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
  b.set(a)
  b.smooth("z")
  sub_plot(5,3,14)
  b.norm(-1,1,true)
  rotate(70,60)
  box()
  surf3(0.5,b)
  surf3(-0.5,b)
end


```
![image of data2.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/data2/data2.png)

## dens.rb

```ruby
PROCS['dens'] = proc do
  a = MathGL::MglData.new
  a1 = MathGL::MglData.new(30,40,3)
  mgls_prepare2d(a)
  fill(a1,"0.6*sin(2*pi*x+pi*(z+1)/2)*sin(3*pi*y+pi*z) + 0.4*cos(3*pi*(x*y)+pi*(z+1)^2/2)")
  if !$mini
    sub_plot(2,2,0,"")
    title("Dens plot (default)")
  end
  box()
  dens(a)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("3d variant")
  rotate(50,60)
  box()
  dens(a)
  sub_plot(2,2,2,"")
  title("'\\#' style; meshnum 10")
  box()
  dens(a,"#","meshnum 10")
  sub_plot(2,2,3)
  title("several slices")
  rotate(50,60)
  box()
  dens(a1)
end


```
![image of dens.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/dens/dens.png)

## dens_xyz.rb

```ruby
PROCS['dens_xyz'] = proc do
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  if !$mini
    title("Dens[XYZ] sample")
  end
  rotate(50,60)
  box()
  dens_x(c.sum("x"),"",-1)
  dens_y(c.sum("y"),"",1)
  dens_z(c.sum("z"),"",-1)
end


```
![image of dens_xyz.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/dens_xyz/dens_xyz.png)

## densa.rb

```ruby
PROCS['densa'] = proc do
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  if !$mini
    title("Dens3 sample")
  end
  rotate(50,60)
  alpha(true)
  set_alpha_def(0.7)
  set_origin(0,0,0)
  axis("_xyz")
  box()
  dens3(c,"x")
  dens3(c)
  dens3(c,"z")
end


```
![image of densa.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/densa/densa.png)

## dew.rb

```ruby
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


```
![image of dew.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/dew/dew.png)

## dots.rb

```ruby
PROCS['dots'] = proc do
  n = 1000
  x = MathGL::MglData.new(n)
  y = MathGL::MglData.new(n)
  z = MathGL::MglData.new(n)
  for i in 0...n
    t = M_PI*(mgl_rnd()-0.5)
    f = 2*M_PI*mgl_rnd()
    x.set_val(0.9*Math.cos(t)*Math.cos(f),i)
    y.set_val(0.9*Math.cos(t)*Math.sin(f),i)
    z.set_val(0.6*Math.sin(t),i)
  end
  if !$mini
    title("Dots sample")
  end
  rotate(50,60)
  box()
  dots(x,y,z)
end


```
![image of dots.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/dots/dots.png)

## error.rb

```ruby
PROCS['error'] = proc do
  y = MathGL::MglData.new
  mgls_prepare1d(y)
  x0 = MathGL::MglData.new(10)
  y0 = MathGL::MglData.new(10)
  ex0 = MathGL::MglData.new(10)
  ey0 = MathGL::MglData.new(10)
  for i in 0...10
    x = i/9.0
    x0.set_val(2*x-1 + 0.1*mgl_rnd()-0.05,i)
    y0.set_val(0.7*Math.sin(2*M_PI*x)+0.5*Math.cos(3*M_PI*x)+0.2*Math.sin(M_PI*x)+0.2*mgl_rnd()-0.1,i)
    ey0.set_val(0.2,i)
    ex0.set_val(0.1,i)
  end
  if !$mini
    sub_plot(2,2,0,"")
    title("Error plot (default)")
  end
  box()
  plot(y.sub_data(-1,0))
  error(x0,y0,ex0,ey0,"ko")
  if $mini
    return
  end
  sub_plot(2,2,1,"")
  title("'!' style; no e_x")
  box()
  plot(y.sub_data(-1,0))
  error(x0,y0,ey0,"o!rgb")
  sub_plot(2,2,2,"")
  title("'\\@' style")
  alpha(true)
  box()
  plot(y.sub_data(-1,0))
  error(x0,y0,ex0,ey0,"@","alpha 0.5")
  sub_plot(2,2,3)
  title("3d variant")
  rotate(50,60)
  for i in 0...10
    error([2*mgl_rnd()-1,2*mgl_rnd()-1,2*mgl_rnd()-1], [0.2,0.2,0.2],"bo")
  end
  axis()
end


```
![image of error.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/error/error.png)

## fall.rb

```ruby
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


```
![image of fall.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/fall/fall.png)

## fexport.rb

```ruby
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


```
![image of fexport.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/fexport/fexport.png)

## fit.rb

```ruby
PROCS['fit'] = proc do
  rnd = MathGL::MglData.new(100)
  inp = MathGL::MglData.new(100)
  res = MathGL::MglData.new
  fill(rnd,"0.4*rnd+0.1+sin(2*pi*x)")
  fill(inp,"0.3+sin(2*pi*x)")
  ini = [1,1,3]
  Ini = MathGL::MglData.new(ini)
  fit(rnd, "a+b*sin(c*x)", "abc", Ini)
  if !$mini
    title("Fitting sample")
  end
  set_range('y',-2,2)
  box()
  plot(rnd, ". ")
  axis()
  plot(res, "r")
  plot(inp, "b")
  puts([-0.9, -1.3], "fitted:", "r:")
  puts_fit([0, -1.8], "y = ", "r")
  puts([0, 2.2], "initial: y = 0.3+sin(2\\pi x)", "b")
end


```
![image of fit.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/fit/fit.png)

## flow.rb

```ruby
PROCS['flow'] = proc do
  a = MathGL::MglData.new
  b = MathGL::MglData.new
  mgls_prepare2v(a,b)
  if !$mini
    sub_plot(2,2,0,"")
    title("Flow plot (default)")
  end
  box()
  flow(a,b)
  if $mini
    return
  end
  sub_plot(2,2,1,"")
  title("'v' style")
  box()
  flow(a,b,"v")
  sub_plot(2,2,2,"")
  title("'\\#' style")
  box()
  flow(a,b,"#")
  ex = MathGL::MglData.new
  ey = MathGL::MglData.new
  ez = MathGL::MglData.new
  mgls_prepare3v(ex,ey,ez)
  sub_plot(2,2,3)
  title("3d variant")
  rotate(50,60)
  box()
  flow(ex,ey,ez)
end


```
![image of flow.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/flow/flow.png)

## fog.rb

```ruby
PROCS['fog'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  if !$mini
    title("Fog sample")
  end
  light(true)
  rotate(50,60)
  fog(1)
  box()
  surf(a)
end


```
![image of fog.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/fog/fog.png)

## fonts.rb

```ruby
PROCS['fonts'] = proc do
  h = 1.1
  d = 0.25
  load_font("STIX")
  puts([0,h], "default font (STIX)")
  load_font("adventor")
  puts([0,h-d], "adventor font")
  load_font("bonum")
  puts([0,h-2*d], "bonum font")
  load_font("chorus")
  puts([0,h-3*d], "chorus font")
  load_font("cursor")
  puts([0,h-4*d], "cursor font")
  load_font("heros")
  puts([0,h-5*d], "heros font")
  load_font("heroscn")
  puts([0,h-6*d], "heroscn font")
  load_font("pagella")
  puts([0,h-7*d], "pagella font")
  load_font("schola")
  puts([0,h-8*d], "schola font")
  load_font("termes")
  puts([0,h-9*d], "termes font")
  load_font("")
end


```
![image of fonts.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/fonts/fonts.png)

## grad.rb

```ruby
PROCS['grad'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  if !$mini
    sub_plot(1,1,0,"")
    title("Grad plot")
  end
  box()
  grad(a)
  dens(a,"{u8}w{q8}")
end


```
![image of grad.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/grad/grad.png)

## hist.rb

```ruby
PROCS['hist'] = proc do
  x = MathGL::MglData.new(10000)
  y = MathGL::MglData.new(10000)
  z = MathGL::MglData.new(10000)
  fill(x,"2*rnd-1")
  fill(y,"2*rnd-1")
  fill(z,"exp(-6*(v^2+w^2))",x,y)
  xx = hist(x,z)
  yy = hist(y,z)
  xx.norm(0,1)
  yy.norm(0,1)
  multi_plot(3,3,3,2,2,"")
  set_ranges(-1,1,-1,1,0,1)
  box()
  dots(x,y,z,"wyrRk")
  multi_plot(3,3,0,2,1,"")
  set_ranges(-1,1,0,1)
  box()
  bars(xx)
  multi_plot(3,3,5,1,2,"")
  set_ranges(0,1,-1,1)
  box()
  barh(yy)
  sub_plot(3,3,2)
  puts([0.5,0.5],"Hist and\nMultiPlot\nsample","a",-3)
end


```
![image of hist.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/hist/hist.png)

## inplot.rb

```ruby
PROCS['inplot'] = proc do
  sub_plot(3,2,0)
  title("StickPlot")
  stick_plot(3, 0, 20, 30)
  box("r")
  puts([0],"0","r")
  stick_plot(3, 1, 20, 30)
  box("g")
  puts([0],"1","g")
  stick_plot(3, 2, 20, 30)
  box("b")
  puts([0],"2","b")
  sub_plot(3,2,3,"")
  title("ColumnPlot")
  column_plot(3, 0)
  box("r")
  puts([0],"0","r")
  column_plot(3, 1)
  box("g")
  puts([0],"1","g")
  column_plot(3, 2)
  box("b")
  puts([0],"2","b")
  sub_plot(3,2,4,"")
  title("GridPlot")
  grid_plot(2, 2, 0)
  box("r")
  puts([0],"0","r")
  grid_plot(2, 2, 1)
  box("g")
  puts([0],"1","g")
  grid_plot(2, 2, 2)
  box("b")
  puts([0],"2","b")
  grid_plot(2, 2, 3)
  box("m")
  puts([0],"3","m")
  sub_plot(3,2,5,"")
  title("InPlot")
  box()
  in_plot(0.4, 1, 0.6, 1, true)
  box("r")
  multi_plot(3,2,1, 2, 1,"")
  title("MultiPlot")
  box()
end


```
![image of inplot.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/inplot/inplot.png)

## label.rb

```ruby
PROCS['label'] = proc do
  ys = MathGL::MglData.new(10)
  ys.modify("0.8*sin(pi*2*x)+0.2*rnd")
  if !$mini
    sub_plot(1,1,0,"")
    title("Label plot")
  end
  box()
  plot(ys," *")
  label(ys,"y=%y")
end


```
![image of label.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/label/label.png)

## legend.rb

```ruby
PROCS['legend'] = proc do
  add_legend("sin(\\pi {x^2})","b")
  add_legend("sin(\\pi x)","g*")
  add_legend("sin(\\pi \\sqrt{x})","rd")
  add_legend("just text"," ")
  add_legend("no indent for this","")
  if !$mini
    sub_plot(2,2,0,"")
    title("Legend (default)")
  end
  box()
  legend()
  if $mini
    return
  end
  legend(3,"A#")
  puts([0.75,0.65],"Absolute position","A")
  sub_plot(2,2,2,"")
  title("coloring")
  box()
  legend(0,"r#")
  legend(1,"Wb#")
  legend(2,"ygr#")
  sub_plot(2,2,3,"")
  title("manual position")
  box()
  legend(0.5,1)
  puts([0.5,0.55],"at x=0.5, y=1","a")
  legend(1,"#-")
  puts([0.75,0.25],"Horizontal legend","a")
end


```
![image of legend.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/legend/legend.png)

## loglog.rb

```ruby
PROCS['loglog'] = proc do
  sub_plot(2,2,0,"<_")
  title("Semi-log axis")
  set_ranges(0.01,100,-1,1)
  set_func("lg(x)","")
  axis()
  grid("xy","g")
  fplot("sin(1/x)")
  label('x',"x",0)
  label('y', "y = sin 1/x",0)
  sub_plot(2,2,1,"<_")
  title("Log-log axis")
  set_ranges(0.01,100,0.1,100)
  set_func("lg(x)","lg(y)")
  axis()
  fplot("sqrt(1+x^2)")
  label('x',"x",0)
  label('y', "y = \\sqrt{1+x^2}",0)
  sub_plot(2,2,2,"<_")
  title("Minus-log axis")
  set_ranges(-100,-0.01,-100,-0.1)
  set_func("-lg(-x)","-lg(-y)")
  axis()
  fplot("-sqrt(1+x^2)")
  label('x',"x",0)
  label('y', "y = -\\sqrt{1+x^2}",0)
  sub_plot(2,2,3,"<_")
  title("Log-ticks")
  set_ranges(0.1,100,0,100)
  set_func("sqrt(x)","")
  axis()
  fplot("x")
  label('x',"x",1)
  label('y', "y = x",0)
end


```
![image of loglog.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/loglog/loglog.png)

## map.rb

```ruby
PROCS['map'] = proc do
  a = MathGL::MglData.new(50, 40)
  b = MathGL::MglData.new(50, 40)
  puts([0, 0], "\\to", ":C", -1.4)
  set_ranges(-1,1,-1,1,-2,2)
  sub_plot(2, 1, 0)
  fill(a,"x")
  fill(b,"y")
  puts([0, 1.1], "\\{x, y\\}", ":C", -2)
  box()
  map(a, b, "brgk")
  sub_plot(2, 1, 1)
  fill(a,"(x^3+y^3)/2")
  fill(b,"(x-y)/2")
  puts([0, 1.1], "\\{\\frac{x^3+y^3}{2}, \\frac{x-y}{2}\\}", ":C", -2)
  box()
  map(a, b, "brgk")
end


```
![image of map.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/map/map.png)

## mark.rb

```ruby
PROCS['mark'] = proc do
  y = MathGL::MglData.new
  y1 = MathGL::MglData.new
  mgls_prepare1d(y,y1)
  if !$mini
    sub_plot(1,1,0,"")
    title("Mark plot (default)")
  end
  box()
  mark(y,y1,"s")
end


```
![image of mark.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/mark/mark.png)

## mesh.rb

```ruby
PROCS['mesh'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  if !$mini
    title("Mesh plot")
  end
  rotate(50,60)
  box()
  mesh(a)
end


```
![image of mesh.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/mesh/mesh.png)

## mirror.rb

```ruby
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


```
![image of mirror.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/mirror/mirror.png)

## molecule.rb

```ruby
PROCS['molecule'] = proc do
  vertex_color(false)
  compression(false)
  double_sided(false)
  alpha(true)
  light(true)
  sub_plot(2,2,0,"")
  title("Methane, CH_4")
  start_group("Methane")
  rotate(60,120)
  sphere([0,0,0],0.25,"k")
  drop([0,0,0],[0,0,1],0.35,"h",1,2)
  sphere([0,0,0.7],0.25,"g")
  drop([0,0,0],[-0.94,0,-0.33],0.35,"h",1,2)
  sphere([-0.66,0,-0.23],0.25,"g")
  drop([0,0,0],[0.47,0.82,-0.33],0.35,"h",1,2)
  sphere([0.33,0.57,-0.23],0.25,"g")
  drop([0,0,0],[0.47,-0.82,-0.33],0.35,"h",1,2)
  sphere([0.33,-0.57,-0.23],0.25,"g")
  end_group()
  sub_plot(2,2,1,"")
  title("Water, H_{2}O")
  start_group("Water")
  rotate(60,100)
  start_group("Water_O")
  sphere([0,0,0],0.25,"r")
  end_group()
  start_group("Water_Bond_1")
  drop([0,0,0],[0.3,0.5,0],0.3,"m",1,2)
  end_group()
  start_group("Water_H_1")
  sphere([0.3,0.5,0],0.25,"g")
  end_group()
  start_group("Water_Bond_2")
  drop([0,0,0],[0.3,-0.5,0],0.3,"m",1,2)
  end_group()
  start_group("Water_H_2")
  sphere([0.3,-0.5,0],0.25,"g")
  end_group()
  end_group()
  sub_plot(2,2,2,"")
  title("Oxygen, O_2")
  start_group("Oxygen")
  rotate(60,120)
  drop([0,0.5,0],[0,-0.3,0],0.3,"m",1,2)
  sphere([0,0.5,0],0.25,"r")
  drop([0,-0.5,0],[0,0.3,0],0.3,"m",1,2)
  sphere([0,-0.5,0],0.25,"r")
  end_group()
  sub_plot(2,2,3,"")
  title("Ammonia, NH_3")
  start_group("Ammonia")
  rotate(60,120)
  sphere([0,0,0],0.25,"b")
  drop([0,0,0],[0.33,0.57,0],0.32,"n",1,2)
  sphere([0.33,0.57,0],0.25,"g")
  drop([0,0,0],[0.33,-0.57,0],0.32,"n",1,2)
  sphere([0.33,-0.57,0],0.25,"g")
  drop([0,0,0],[-0.65,0,0],0.32,"n",1,2)
  sphere([-0.65,0,0],0.25,"g")
  end_group()
  double_sided( true )
end


```
![image of molecule.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/molecule/molecule.png)

## param1.rb

```ruby
PROCS['param1'] = proc do
  x = MathGL::MglData.new(100)
  y = MathGL::MglData.new(100)
  z = MathGL::MglData.new(100)
  c = MathGL::MglData.new(100)
  fill(x,"sin(pi*x)")
  fill(y,"cos(pi*x)")
  fill(z,"sin(2*pi*x)")
  fill(c,"cos(2*pi*x)")
  sub_plot(4,3,0)
  rotate(40,60)
  box()
  plot(x,y,z)
  sub_plot(4,3,1)
  rotate(40,60)
  box()
  area(x,y,z)
  sub_plot(4,3,2)
  rotate(40,60)
  box()
  tens(x,y,z,c)
  sub_plot(4,3,3)
  rotate(40,60)
  box()
  bars(x,y,z)
  sub_plot(4,3,4)
  rotate(40,60)
  box()
  stem(x,y,z)
  sub_plot(4,3,5)
  rotate(40,60)
  box()
  text_mark(x,y,z,"\\alpha")
  sub_plot(4,3,6)
  rotate(40,60)
  box()
  tube(x,y,z,c/10,"","light on")
  sub_plot(4,3,7)
  rotate(40,60)
  box()
  mark(x,y,z,c,"s")
  sub_plot(4,3,8)
  rotate(40,60)
  box()
  error(x,y,z/10,c/10)
  sub_plot(4,3,9)
  rotate(40,60)
  box()
  step(x,y,z)
  sub_plot(4,3,10)
  rotate(40,60)
  box()
  torus(x,z,"z","light on")
  sub_plot(4,3,11)
  rotate(40,60)
  box()
  label(x,y,z,"%z")
end


```
![image of param1.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/param1/param1.png)

## param2.rb

```ruby
PROCS['param2'] = proc do
  x = MathGL::MglData.new(100,100)
  y = MathGL::MglData.new(100,100)
  z = MathGL::MglData.new(100,100)
  c = MathGL::MglData.new(100,100)
  fill(x,"sin(pi*(x+y)/2)*cos(pi*y/2)")
  fill(y,"cos(pi*(x+y)/2)*cos(pi*y/2)")
  fill(z,"sin(pi*y/2)")
  fill(c,"cos(pi*x)")
  sub_plot(4,4,0)
  rotate(40,60)
  box()
  surf(x,y,z)
  sub_plot(4,4,1)
  rotate(40,60)
  box()
  surf_c(x,y,z,c)
  sub_plot(4,4,2)
  rotate(40,60)
  box()
  surf_a(x,y,z,c,"","alpha 1")
  sub_plot(4,4,3)
  rotate(40,60)
  box()
  mesh(x,y,z,"","meshnum 10")
  sub_plot(4,4,4)
  rotate(40,60)
  box()
  tile(x,y,z,"","meshnum 10")
  sub_plot(4,4,5)
  rotate(40,60)
  box()
  tile_s(x,y,z,c,"","meshnum 10")
  sub_plot(4,4,6)
  rotate(40,60)
  box()
  axial(x,y,z,"","alpha 0.5;light on")
  sub_plot(4,4,7)
  rotate(40,60)
  box()
  cont(x,y,z)
  sub_plot(4,4,8)
  rotate(40,60)
  box()
  cont_f(x,y,z,"","light on")
  cont_v(x,y,z,"","light on")
  sub_plot(4,4,9)
  rotate(40,60)
  box()
  belt(x,y,z,"x","meshnum 10;light on")
  sub_plot(4,4,10)
  rotate(40,60)
  box()
  dens(x,y,z,"","alpha 0.5")
  sub_plot(4,4,11)
  rotate(40,60)
  box()
  fall(x,y,z,"g","meshnum 10")
  fall(x,y,z,"rx","meshnum 10")
  sub_plot(4,4,12)
  rotate(40,60)
  box()
  belt(x,y,z,"","meshnum 10;light on")
  sub_plot(4,4,13)
  rotate(40,60)
  box()
  boxs(x,y,z,"","meshnum 10;light on")
  sub_plot(4,4,14)
  rotate(40,60)
  box()
  boxs(x,y,z,"#","meshnum 10")
  sub_plot(4,4,15)
  rotate(40,60)
  box()
  boxs(x,y,z,"@","meshnum 10;light on")
end


```
![image of param2.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/param2/param2.png)

## param3.rb

```ruby
PROCS['param3'] = proc do
  x = MathGL::MglData.new(50,50,50)
  y = MathGL::MglData.new(50,50,50)
  z = MathGL::MglData.new(50,50,50)
  c = MathGL::MglData.new(50,50,50)
  d = MathGL::MglData.new(50,50,50)
  fill(x,"(x+2)/3*sin(pi*y/2)")
  fill(y,"(x+2)/3*cos(pi*y/2)")
  fill(z,"z")
  fill(c,"-2*(x^2+y^2+z^4-z^2)+0.2")
  fill(d,"1-2*tanh(2*(x+y)^2)")
  light(true)
  alpha(true)
  sub_plot(4,3,0)
  rotate(40,60)
  box()
  surf3(x,y,z,c)
  sub_plot(4,3,1)
  rotate(40,60)
  box()
  surf_3c(x,y,z,c,d)
  sub_plot(4,3,2)
  rotate(40,60)
  box()
  surf_3a(x,y,z,c,d)
  sub_plot(4,3,3)
  rotate(40,60)
  box()
  cloud(x,y,z,c)
  sub_plot(4,3,4)
  rotate(40,60)
  box()
  cont3(x,y,z,c)
  cont3(x,y,z,c,"x")
  cont3(x,y,z,c,"z")
  sub_plot(4,3,5)
  rotate(40,60)
  box()
  cont_f3(x,y,z,c)
  cont_f3(x,y,z,c,"x")
  cont_f3(x,y,z,c,"z")
  sub_plot(4,3,6)
  rotate(40,60)
  box()
  dens3(x,y,z,c)
  dens3(x,y,z,c,"x")
  dens3(x,y,z,c,"z")
  sub_plot(4,3,7)
  rotate(40,60)
  box()
  dots(x,y,z,c,"","meshnum 15")
  sub_plot(4,3,8)
  rotate(40,60)
  box()
  dens_x(c,"",0)
  dens_y(c,"",0)
  dens_z(c,"",0)
  sub_plot(4,3,9)
  rotate(40,60)
  box()
  cont_x(c,"",0)
  cont_y(c,"",0)
  cont_z(c,"",0)
  sub_plot(4,3,10)
  rotate(40,60)
  box()
  cont_fx(c,"",0)
  cont_fy(c,"",0)
  cont_fz(c,"",0)
end


```
![image of param3.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/param3/param3.png)

## paramv.rb

```ruby
PROCS['paramv'] = proc do
  x = MathGL::MglData.new(20,20,20)
  y = MathGL::MglData.new(20,20,20)
  z = MathGL::MglData.new(20,20,20)
  ex = MathGL::MglData.new(20,20,20)
  ey = MathGL::MglData.new(20,20,20)
  ez = MathGL::MglData.new(20,20,20)
  fill(x,"(x+2)/3*sin(pi*y/2)")
  fill(y,"(x+2)/3*cos(pi*y/2)")
  fill(z,"x+z")
  fill(ex,"x")
  fill(ey,"x^2+y")
  fill(ez,"y^2+z")
  x1 = MathGL::MglData.new(20,20)
  y1 = MathGL::MglData.new(20,20)
  e1 = MathGL::MglData.new(20,20)
  e2 = MathGL::MglData.new(20,20)
  fill(x1,"(x+2)/3*sin(pi*y/2)")
  fill(y1,"(x+2)/3*cos(pi*y/2)")
  fill(e1,"x")
  fill(e2,"x^2+y")
  sub_plot(3,3,0)
  rotate(40,60)
  box()
  vect(x1,y1,e1,e2)
  sub_plot(3,3,1)
  rotate(40,60)
  box()
  flow(x1,y1,e1,e2)
  sub_plot(3,3,2)
  rotate(40,60)
  box()
  pipe(x1,y1,e1,e2)
  sub_plot(3,3,3)
  rotate(40,60)
  box()
  dew(x1,y1,e1,e2)
  sub_plot(3,3,4)
  rotate(40,60)
  box()
  vect(x,y,z,ex,ey,ez)
  sub_plot(3,3,5)
  rotate(40,60)
  box()
  vect3(x,y,z,ex,ey,ez)
  vect3(x,y,z,ex,ey,ez,"x")
  vect3(x,y,z,ex,ey,ez,"z")
  grid3(x,y,z,z,"{r9}")
  grid3(x,y,z,z,"{r9}x")
  grid3(x,y,z,z,"{r9}z")
  sub_plot(3,3,6)
  rotate(40,60)
  box()
  flow(x,y,z,ex,ey,ez)
  sub_plot(3,3,7)
  rotate(40,60)
  box()
  pipe(x,y,z,ex,ey,ez)
end


```
![image of paramv.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/paramv/paramv.png)

## pde.rb

```ruby
PROCS['pde'] = proc do
  a = MathGL::MglData.new
  re = MathGL::MglData.new(128)
  im = MathGL::MglData.new(128)
  fill(re,"exp(-48*(x+0.7)^2)")
  pde("p^2+q^2-x-1+i*0.5*(z+x)*(z>-x)", re, im, 0.01, 30)
  a.transpose("yxz")
  if !$mini
    sub_plot(1,1,0,"<_")
    title("PDE solver")
  end
  set_range('c',0,1)
  dens(a,"wyrRk")
  axis()
  label('x', "\\i x")
  label('y', "\\i z")
  fplot("-x", "k|")
  puts([0, 0.95], "Equation: ik_0\\partial_zu + \\Delta u + x\\cdot u + i \\frac{x+z}{2}\\cdot u = 0\nabsorption: (x+z)/2 for x+z>0")
end


```
![image of pde.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/pde/pde.png)

## pipe.rb

```ruby
PROCS['pipe'] = proc do
  a = MathGL::MglData.new
  b = MathGL::MglData.new
  mgls_prepare2v(a,b)
  if !$mini
    sub_plot(2,2,0,"")
    title("Pipe plot (default)")
  end
  light(true)
  box()
  pipe(a,b)
  if $mini
    return
  end
  sub_plot(2,2,1,"")
  title("'i' style")
  box()
  pipe(a,b,"i")
  sub_plot(2,2,2,"")
  title("'\\#' style")
  box()
  pipe(a,b,"#")
  ex = MathGL::MglData.new
  ey = MathGL::MglData.new
  ez = MathGL::MglData.new
  mgls_prepare3v(ex,ey,ez)
  sub_plot(2,2,3)
  title("3d variant")
  rotate(50,60)
  box()
  pipe(ex,ey,ez,"",0.1)
end


```
![image of pipe.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/pipe/pipe.png)

## plot.rb

```ruby
PROCS['plot'] = proc do
  y = MathGL::MglData.new
  mgls_prepare1d(y)
  set_origin(0,0,0)
  if !$mini
    sub_plot(2,2,0,"")
    title("Plot plot (default)")
  end
  box()
  plot(y)
  if $mini
    return
  end
  sub_plot(2,2,2,"")
  title("'!' style; 'rgb' palette")
  box()
  plot(y,"o!rgb")
  sub_plot(2,2,3,"")
  title("just markers")
  box()
  plot(y," +")
  sub_plot(2,2,1)
  title("3d variant")
  rotate(50,60)
  box()
  yc = MathGL::MglData.new(30)
  xc = MathGL::MglData.new(30)
  z = MathGL::MglData.new(30)
  z.modify("2*x-1")
  yc.modify("sin(pi*(2*x-1))")
  xc.modify("cos(pi*2*x-pi)")
  plot(xc,yc,z,"rs")
end


```
![image of plot.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/plot/plot.png)

## primitives.rb

```ruby
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


```
![image of primitives.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/primitives/primitives.png)

## projection.rb

```ruby
PROCS['projection'] = proc do
  set_ranges(0,1,0,1,0,1)
  x = MathGL::MglData.new(50)
  y = MathGL::MglData.new(50)
  z = MathGL::MglData.new(50)
  rx = MathGL::MglData.new(10)
  ry = MathGL::MglData.new(10)
  a = MathGL::MglData.new(20,30)
  a.modify("30*x*y*(1-x-y)^2*(x+y<1)")
  x.modify("0.25*(1+cos(2*pi*x))")
  y.modify("0.25*(1+sin(2*pi*x))")
  rx.modify("rnd")
  ry.modify("(1-v)*rnd",rx)
  z.modify("x")
  if !$mini
    title("Projection sample")
  end
  ternary(4)
  rotate(50,60)
  light(true)
  plot(x,y,z,"r2")
  surf(a,"#")
  axis()
  grid()
  box()
  label('x',"X",1)
  label('y',"Y",1)
  label('z',"Z",1)
end


```
![image of projection.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/projection/projection.png)

## projection5.rb

```ruby
PROCS['projection5'] = proc do
  set_ranges(0,1,0,1,0,1)
  x = MathGL::MglData.new(50)
  y = MathGL::MglData.new(50)
  z = MathGL::MglData.new(50)
  rx = MathGL::MglData.new(10)
  ry = MathGL::MglData.new(10)
  a = MathGL::MglData.new(20,30)
  a.modify("30*x*y*(1-x-y)^2*(x+y<1)")
  x.modify("0.25*(1+cos(2*pi*x))")
  y.modify("0.25*(1+sin(2*pi*x))")
  rx.modify("rnd")
  ry.modify("(1-v)*rnd",rx)
  z.modify("x")
  if !$mini
    title("Projection sample (ternary)")
  end
  ternary(5)
  rotate(50,60)
  light(true)
  plot(x,y,z,"r2")
  surf(a,"#")
  axis()
  grid()
  box()
  label('x',"X",1)
  label('y',"Y",1)
  label('z',"Z",1)
end


```
![image of projection5.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/projection5/projection5.png)

## qo2d.rb

```ruby
PROCS['qo2d'] = proc do
  r = MathGL::MglData.new
  xx = MathGL::MglData.new
  yy = MathGL::MglData.new
  a = MathGL::MglData.new
  im = MathGL::MglData.new(128)
  re = MathGL::MglData.new(128)
  ham = "p^2+q^2-x-1+i*0.5*(y+x)*(y>-x)"
  r = MathGL.mgl_ray(ham, [-0.7, -1], [0, 0.5], 0.02, 2)
  if !$mini
    sub_plot(1,1,0,"<_")
    title("Beam and ray tracing")
  end
  plot(r.sub_data(0), r.sub_data(1), "k")
  axis()
  label('x', "\\i x")
  label('y', "\\i y")
  fill(re,"exp(-48*x^2)")
  a = MathGL.mgl_qo_2d(ham, re, im, r, xx, yy, 1, 30)
  set_range('c',0, 1)
  dens(xx, yy, a, "wyrRk")
  fplot("-x", "k|")
  puts([0, 0.85], "absorption: (x+y)/2 for x+y>0")
  puts([0.7, -0.05], "central ray")
end


```
![image of qo2d.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/qo2d/qo2d.png)

## radar.rb

```ruby
PROCS['radar'] = proc do
  yr = MathGL::MglData.new(10,3)
  yr.modify("0.4*sin(pi*(2*x+y))+0.1*rnd")
  if !$mini
    sub_plot(1,1,0,"")
    title("Radar plot (with grid, '\\#')")
  end
  radar(yr,"#")
end


```
![image of radar.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/radar/radar.png)

## region.rb

```ruby
PROCS['region'] = proc do
  y = MathGL::MglData.new
  mgls_prepare1d(y)
  y1 = y.sub_data(-1,1)
  y2 = y.sub_data(-1,2)
  set_origin(0,0,0)
  if !$mini
    sub_plot(2,2,0,"")
    title("Region plot (default)")
  end
  box()
  region(y1,y2)
  plot(y1,"k2")
  plot(y2,"k2")
  if $mini
    return
  end
  sub_plot(2,2,1,"")
  title("2 colors")
  box()
  region(y1,y2,"yr")
  plot(y1,"k2")
  plot(y2,"k2")
  sub_plot(2,2,2,"")
  title("'!' style")
  box()
  region(y1,y2,"!")
  plot(y1,"k2")
  plot(y2,"k2")
  sub_plot(2,2,3,"")
  title("'i' style")
  box()
  region(y1,y2,"ir")
  plot(y1,"k2")
  plot(y2,"k2")
end


```
![image of region.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/region/region.png)

## schemes.rb

```ruby
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


```
![image of schemes.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/schemes/schemes.png)

## several_light.rb

```ruby
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


```
![image of several_light.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/several_light/several_light.png)

## solve.rb

```ruby
PROCS['solve'] = proc do
  set_range('z',0,1)
  x = MathGL::MglData.new(20,30)
  y = MathGL::MglData.new(20,30)
  z = MathGL::MglData.new(20,30)
  xx = MathGL::MglData.new
  yy = MathGL::MglData.new
  zz = MathGL::MglData.new
  fill(x,"(x+2)/3*cos(pi*y)")
  fill(y,"(x+2)/3*sin(pi*y)")
  fill(z,"exp(-6*x^2-2*sin(pi*y)^2)")
  sub_plot(2,1,0)
  title("Cartesian space")
  rotate(30,-40)
  axis("xyzU")
  box()
  label('x',"x")
  label('y',"y")
  set_origin(1,1)
  grid("xy")
  mesh(x,y,z)
  u = x.solve(0.5,'x')
  v = MathGL::MglData.new(u.nx)
  v.fill(0,1)
  xx = x.evaluate(u,v)
  yy = y.evaluate(u,v)
  zz = z.evaluate(u,v)
  plot(xx,yy,zz,"k2o")
  u1 = x.solve(-0.5,'y')
  v1 = MathGL::MglData.new(u1.nx)
  v1.fill(0,1)
  xx = x.evaluate(v1,u1)
  yy = y.evaluate(v1,u1)
  zz = z.evaluate(v1,u1)
  plot(xx,yy,zz,"b2^")
  u2 = x.solve(-0.5,'y',u1)
  xx = x.evaluate(v1,u2)
  yy = y.evaluate(v1,u2)
  zz = z.evaluate(v1,u2)
  plot(xx,yy,zz,"r2v")
  sub_plot(2,1,1)
  title("Accompanied space")
  set_ranges(0,1,0,1)
  set_origin(0,0)
  axis()
  box()
  label('x',"i")
  label('y',"j")
  grid(z,"h")
  plot(u,v,"k2o")
  line([0.4,0.5],[0.8,0.5],"kA")
  plot(v1,u1,"b2^")
  line([0.5,0.15],[0.5,0.3],"bA")
  plot(v1,u2,"r2v")
  line([0.5,0.7],[0.5,0.85],"rA")
end


```
![image of solve.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/solve/solve.png)

## stem.rb

```ruby
PROCS['stem'] = proc do
  y = MathGL::MglData.new
  mgls_prepare1d(y)
  set_origin(0,0,0)
  yc = MathGL::MglData.new(30)
  xc = MathGL::MglData.new(30)
  z = MathGL::MglData.new(30)
  z.modify("2*x-1")
  yc.modify("sin(pi*(2*x-1))")
  xc.modify("cos(pi*2*x-pi)")
  if !$mini
    sub_plot(2,2,0,"")
    title("Stem plot (default)")
  end
  box()
  stem(y)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("3d variant")
  rotate(50,60)
  box()
  stem(xc,yc,z,"rx")
  sub_plot(2,2,2,"")
  title("'!' style")
  box()
  stem(y,"o!rgb")
end


```
![image of stem.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/stem/stem.png)

## step.rb

```ruby
PROCS['step'] = proc do
  y = MathGL::MglData.new
  mgls_prepare1d(y)
  set_origin(0,0,0)
  yc = MathGL::MglData.new(30)
  xc = MathGL::MglData.new(30)
  z = MathGL::MglData.new(30)
  z.modify("2*x-1")
  yc.modify("sin(pi*(2*x-1))")
  xc.modify("cos(pi*2*x-pi)")
  if !$mini
    sub_plot(2,2,0,"")
    title("Step plot (default)")
  end
  box()
  step(y)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("3d variant")
  rotate(50,60)
  box()
  step(xc,yc,z,"r")
  sub_plot(2,2,2,"")
  title("'!' style")
  box()
  step(y,"s!rgb")
end


```
![image of step.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/step/step.png)

## stereo.rb

```ruby
PROCS['stereo'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  light(true)
  sub_plot(2,1,0)
  rotate(50,60+1)
  box()
  surf(a)
  sub_plot(2,1,1)
  rotate(50,60-1)
  box()
  surf(a)
end


```
![image of stereo.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/stereo/stereo.png)

## stfa.rb

```ruby
PROCS['stfa'] = proc do
  a = MathGL::MglData.new(2000)
  b = MathGL::MglData.new(2000)
  fill(a,"cos(50*pi*x)*(x<-.5)+cos(100*pi*x)*(x<0)*(x>-.5)+\
	cos(200*pi*x)*(x<.5)*(x>0)+cos(400*pi*x)*(x>.5)")
  sub_plot(1, 2, 0,"<_")
  title("Initial signal")
  plot(a)
  axis()
  label('x', "\\i t")
  sub_plot(1, 2, 1,"<_")
  title("STFA plot")
  stfa(a, b, 64)
  axis()
  label('x', "\\i t")
  label('y', "\\omega", 0)
end


```
![image of stfa.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/stfa/stfa.png)

## style.rb

```ruby
PROCS['style'] = proc do
  sub_plot(2,2,0)
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
  sub_plot(2,2,1)
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
  sub_plot(2,2,2)
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
  sub_plot(2,2,3)
  stl = "r1"
  txt = "'1'"
  for i in 0...10
    txt[1]=stl[1]='%d'%i
    line([-1,0.2*i-1],[1,0.2*i-1],stl)
    puts([1.05,0.2*i-1],txt,":")
  end
end


```
![image of style.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/style/style.png)

## surf.rb

```ruby
PROCS['surf'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  if !$mini
    sub_plot(2,2,0)
    title("Surf plot (default)")
  end
  light(true)
  rotate(50,60)
  box()
  surf(a)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("'\\#' style; meshnum 10")
  rotate(50,60)
  box()
  surf(a,"#","meshnum 10")
  sub_plot(2,2,2)
  title("'.' style")
  rotate(50,60)
  box()
  surf(a,".")
  sub_plot(2,2,3)
  title("parametric form")
  x = MathGL::MglData.new(50,40)
  y = MathGL::MglData.new(50,40)
  z = MathGL::MglData.new(50,40)
  fill(x,"0.8*sin(pi*x)*sin(pi*(y+1)/2)")
  fill(y,"0.8*cos(pi*x)*sin(pi*(y+1)/2)")
  fill(z,"0.8*cos(pi*(y+1)/2)")
  rotate(50,60)
  box()
  surf(x,y,z,"BbwrR")
end


```
![image of surf.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/surf/surf.png)

## surf3.rb

```ruby
PROCS['surf3'] = proc do
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  if !$mini
    sub_plot(2,2,0)
    title("Surf3 plot (default)")
  end
  rotate(50,60)
  light(true)
  alpha(true)
  box()
  surf3(c)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("'\\#' style")
  rotate(50,60)
  box()
  surf3(c,"#")
  sub_plot(2,2,2)
  title("'.' style")
  rotate(50,60)
  box()
  surf3(c,".")
end


```
![image of surf3.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/surf3/surf3.png)

## surf3a.rb

```ruby
PROCS['surf3a'] = proc do
  c = MathGL::MglData.new
  d = MathGL::MglData.new
  mgls_prepare3d(c,d)
  if !$mini
    title("Surf3A plot")
  end
  rotate(50,60)
  light(true)
  alpha(true)
  box()
  surf_3a(c,d)
end


```
![image of surf3a.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/surf3a/surf3a.png)

## surf3c.rb

```ruby
PROCS['surf3c'] = proc do
  c = MathGL::MglData.new
  d = MathGL::MglData.new
  mgls_prepare3d(c,d)
  if !$mini
    title("Surf3C plot")
  end
  rotate(50,60)
  light(true)
  alpha(true)
  box()
  surf_3c(c,d)
end


```
![image of surf3c.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/surf3c/surf3c.png)

## surfa.rb

```ruby
PROCS['surfa'] = proc do
  a = MathGL::MglData.new
  b = MathGL::MglData.new
  mgls_prepare2d(a,b)
  if !$mini
    title("SurfA plot")
  end
  rotate(50,60)
  alpha(true)
  light(true)
  box()
  surf_a(a,b)
end


```
![image of surfa.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/surfa/surfa.png)

## surfc.rb

```ruby
PROCS['surfc'] = proc do
  a = MathGL::MglData.new
  b = MathGL::MglData.new
  mgls_prepare2d(a,b)
  if !$mini
    title("SurfC plot")
  end
  rotate(50,60)
  light(true)
  box()
  surf_c(a,b)
end


```
![image of surfc.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/surfc/surfc.png)

## table.rb

```ruby
PROCS['table'] = proc do
  ys = MathGL::MglData.new(10,3)
  ys.modify("0.8*sin(pi*(2*x+y/2))+0.2*rnd")
  if !$mini
    sub_plot(2,2,0)
    title("Table plot")
  end
  table(ys,"y_1\ny_2\ny_3")
  box()
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("no borders, colored")
  table(ys,"y_1\ny_2\ny_3","r|")
  sub_plot(2,2,2)
  title("no font decrease")
  table(ys,"y_1\ny_2\ny_3","#")
  sub_plot(2,2,3)
  title("manual width, position")
  table(0.5, 0.95, ys,"y_1\ny_2\ny_3","#", "value 0.7")
  box()
end


```
![image of table.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/table/table.png)

## tape.rb

```ruby
PROCS['tape'] = proc do
  y = MathGL::MglData.new
  mgls_prepare1d(y)
  xc = MathGL::MglData.new(50)
  yc = MathGL::MglData.new(50)
  z = MathGL::MglData.new(50)
  yc.modify("sin(pi*(2*x-1))")
  xc.modify("cos(pi*2*x-pi)")
  z.fill(-1,1)
  if !$mini
    sub_plot(2,2,0,"")
    title("Tape plot (default)")
  end
  box()
  tape(y)
  plot(y,"k")
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("3d variant, 2 colors")
  rotate(50,60)
  light(true)
  box()
  plot(xc,yc,z,"k")
  tape(xc,yc,z,"rg")
  sub_plot(2,2,2)
  title("3d variant, x only")
  rotate(50,60)
  box()
  plot(xc,yc,z,"k")
  tape(xc,yc,z,"xr")
  tape(xc,yc,z,"xr#")
  sub_plot(2,2,3)
  title("3d variant, z only")
  rotate(50,60)
  box()
  plot(xc,yc,z,"k")
  tape(xc,yc,z,"zg")
  tape(xc,yc,z,"zg#")
end


```
![image of tape.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/tape/tape.png)

## tens.rb

```ruby
PROCS['tens'] = proc do
  y = MathGL::MglData.new
  mgls_prepare1d(y)
  set_origin(0,0,0)
  if !$mini
    sub_plot(2,2,0,"")
    title("Tens plot (default)")
  end
  box()
  tens(y.sub_data(-1,0), y.sub_data(-1,1))
  if $mini
    return
  end
  sub_plot(2,2,2,"")
  title("' ' style")
  box()
  tens(y.sub_data(-1,0), y.sub_data(-1,1),"o ")
  sub_plot(2,2,1)
  title("3d variant")
  rotate(50,60)
  box()
  yc = MathGL::MglData.new(30)
  xc = MathGL::MglData.new(30)
  z = MathGL::MglData.new(30)
  z.modify("2*x-1")
  yc.modify("sin(pi*(2*x-1))")
  xc.modify("cos(pi*2*x-pi)")
  tens(xc,yc,z,z,"s")
end


```
![image of tens.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/tens/tens.png)

## ternary.rb

```ruby
PROCS['ternary'] = proc do
  set_ranges(0,1,0,1,0,1)
  x = MathGL::MglData.new(50)
  y = MathGL::MglData.new(50)
  z = MathGL::MglData.new(50)
  rx = MathGL::MglData.new(10)
  ry = MathGL::MglData.new(10)
  a = MathGL::MglData.new(20,30)
  a.modify("30*x*y*(1-x-y)^2*(x+y<1)")
  x.modify("0.25*(1+cos(2*pi*x))")
  y.modify("0.25*(1+sin(2*pi*x))")
  rx.modify("rnd")
  ry.modify("(1-v)*rnd",rx)
  z.modify("x")
  sub_plot(2,2,0)
  title("Ordinary axis 3D")
  rotate(50,60)
  light(true)
  plot(x,y,z,"r2")
  surf(a,"BbcyrR#")
  axis()
  grid()
  box()
  label('x',"B",1)
  label('y',"C",1)
  label('z',"Z",1)
  sub_plot(2,2,1)
  title("Ternary axis (x+y+t=1)")
  ternary(1)
  plot(x,y,"r2")
  plot(rx,ry,"q^ ")
  cont(a)
  line([0.5,0], [0,0.75], "g2")
  axis()
  grid("xyz","B;")
  label('x',"B")
  label('y',"C")
  label('t',"A")
  sub_plot(2,2,2)
  title("Quaternary axis 3D")
  rotate(50,60)
  light(true)
  ternary(2)
  plot(x,y,z,"r2")
  surf(a,"BbcyrR#")
  axis()
  grid()
  box()
  label('t',"A",1)
  label('x',"B",1)
  label('y',"C",1)
  label('z',"D",1)
  sub_plot(2,2,3)
  title("Ternary axis 3D")
  rotate(50,60)
  light(true)
  ternary(1)
  plot(x,y,z,"r2")
  surf(a,"BbcyrR#")
  axis()
  grid()
  box()
  label('t',"A",1)
  label('x',"B",1)
  label('y',"C",1)
  label('z',"Z",1)
end


```
![image of ternary.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/ternary/ternary.png)

## text.rb

```ruby
PROCS['text'] = proc do
  if !$mini
    sub_plot(2,2,0,"")
  end
  #putsw([0,1],"Text can be inp ASCII and inp Unicode")
  puts([0,0.6],"It can be \\wire{wire}, \\big{big} or #r{colored}")
  puts([0,0.2],"One can change style inp string: \\b{bold}, \\i{italic, \\b{both}}")
  puts([0,-0.2],"Easy to \\a{overline} or \\u{underline}")
  puts([0,-0.6],"Easy to change indexes ^{up} _{down} @{center}")
  puts([0,-1],"It parse TeX: \\int \\alpha \\cdot \\sqrt3{sin(\\pi x)^2 + \\gamma_{i_k}} dx")
  if $mini
    return
  end
  sub_plot(2,2,1,"")
  puts([0,0.5], "\\sqrt{\\frac{\\alpha^{\\gamma^2}+\\overset 1{\\big\\infty}}{\\sqrt3{2+b}}}", "@", -2)
  puts([0,-0.5],"Text can be printed\non several lines")
  sub_plot(2,2,2,"")
  y = MathGL::MglData.new
  mgls_prepare1d(y)
  box()
  plot(y.sub_data(-1,0))
  text(y,"This is very very long string drawn along a curve","k")
  text(y,"Another string drawn above a curve","Tr")
  sub_plot(2,2,3,"")
  line([-1,-1],[1,-1],"rA")
  puts([0,-1],[1,-1],"Horizontal")
  line([-1,-1],[1,1],"rA")
  puts([0,0],[1,1],"At angle","@")
  line([-1,-1],[-1,1],"rA")
  puts([-1,0],[-1,1],"Vertical")
end


```
![image of text.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/text/text.png)

## textmark.rb

```ruby
PROCS['textmark'] = proc do
  y = MathGL::MglData.new
  y1 = MathGL::MglData.new
  mgls_prepare1d(y,y1)
  if !$mini
    sub_plot(1,1,0,"")
    title("TextMark plot (default)")
  end
  box()
  text_mark(y,y1,"\\gamma","r")
end


```
![image of textmark.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/textmark/textmark.png)

## ticks.rb

```ruby
PROCS['ticks'] = proc do
  sub_plot(3,2,0)
  title("Usual axis")
  axis()
  sub_plot(3,2,1)
  title("Too big/small range")
  set_ranges(-1000,1000,0,0.001)
  axis()
  sub_plot(3,2,3)
  title("Too narrow range")
  set_ranges(100,100.1,10,10.01)
  axis()
  sub_plot(3,2,4)
  title("Disable ticks tuning")
  set_tune_ticks(0)
  axis()
  sub_plot(3,2,2)
  title("Manual ticks")
  set_ranges(-M_PI,M_PI, 0, 2)
  val = [-M_PI, -M_PI/2, 0, 0.886, M_PI/2, M_PI]
  set_ticks_val('x', MathGL::MglData.new(val), "-\\pi\n-\\pi/2\n0\nx^*\n\\pi/2\n\\pi")
  axis()
  grid()
  fplot("2*cos(x^2)^2", "r2")
  sub_plot(3,2,5)
  title("Time ticks")
  set_range('x',0,3e5)
  set_ticks_time('x',0)
  axis()
end


```
![image of ticks.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/ticks/ticks.png)

## tile.rb

```ruby
PROCS['tile'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  if !$mini
    title("Tile plot")
  end
  rotate(40,60)
  box()
  tile(a)
end


```
![image of tile.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/tile/tile.png)

## tiles.rb

```ruby
PROCS['tiles'] = proc do
  a = MathGL::MglData.new
  b = MathGL::MglData.new
  mgls_prepare2d(a,b)
  if !$mini
    sub_plot(1,1,0,"")
    title("TileS plot")
  end
  box()
  tile_s(a,b)
end


```
![image of tiles.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/tiles/tiles.png)

## torus.rb

```ruby
PROCS['torus'] = proc do
  y1 = MathGL::MglData.new
  y2 = MathGL::MglData.new
  mgls_prepare1d(nil,y1,y2)
  if !$mini
    sub_plot(2,2,0)
    title("Torus plot (default)")
  end
  light(true)
  rotate(50,60)
  box()
  torus(y1,y2)
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("'x' style")
  rotate(50,60)
  box()
  torus(y1,y2,"x")
  sub_plot(2,2,2)
  title("'z' style")
  rotate(50,60)
  box()
  torus(y1,y2,"z")
  sub_plot(2,2,3)
  title("'\\#' style")
  rotate(50,60)
  box()
  torus(y1,y2,"#")
end


```
![image of torus.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/torus/torus.png)

## traj.rb

```ruby
PROCS['traj'] = proc do
  x = MathGL::MglData.new
  y = MathGL::MglData.new
  y1 = MathGL::MglData.new
  y2 = MathGL::MglData.new
  mgls_prepare1d(y,y1,y2,x)
  if !$mini
    sub_plot(1,1,0,"")
    title("Traj plot")
  end
  box()
  plot(x,y)
  traj(x,y,y1,y2)
end


```
![image of traj.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/traj/traj.png)

## triangulation.rb

```ruby
PROCS['triangulation'] = proc do
  x = MathGL::MglData.new(100)
  y = MathGL::MglData.new(100)
  z = MathGL::MglData.new(100)
  fill(x,"2*rnd-1")
  fill(y,"2*rnd-1")
  fill(z,"v^2-w^2",x,y)
  d = MathGL.mgl_triangulation(x,y)
  g = MathGL::MglData.new(30,30)
  if !$mini
    title("Triangulation")
  end
  rotate(40,60)
  box()
  light(true)
  tri_plot(d,x,y,z)
  tri_plot(d,x,y,z,"#k")
  data_grid(g,x,y,z)
  mesh(g,"m")
end


```
![image of triangulation.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/triangulation/triangulation.png)

## triplot.rb

```ruby
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


```
![image of triplot.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/triplot/triplot.png)

## tube.rb

```ruby
PROCS['tube'] = proc do
  y = MathGL::MglData.new
  y1 = MathGL::MglData.new
  y2 = MathGL::MglData.new
  mgls_prepare1d(y,y1,y2)
  y1/=20
  if !$mini
    sub_plot(2,2,0,"")
    title("Tube plot (default)")
  end
  light(true)
  box()
  tube(y,0.05)
  if $mini
    return
  end
  sub_plot(2,2,1,"")
  title("variable radius")
  box()
  tube(y,y1)
  sub_plot(2,2,2,"")
  title("'\\#' style")
  box()
  tube(y,0.05,"#")
  yc = MathGL::MglData.new(50)
  xc = MathGL::MglData.new(50)
  z = MathGL::MglData.new(50)
  z.modify("2*x-1")
  yc.modify("sin(pi*(2*x-1))")
  xc.modify("cos(pi*2*x-pi)")
  sub_plot(2,2,3)
  title("3d variant")
  rotate(50,60)
  box()
  tube(xc,yc,z,y2,"r")
end


```
![image of tube.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/tube/tube.png)

## type0.rb

```ruby
PROCS['type0'] = proc do
  alpha(true)
  light(true)
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  set_transp_type(0)
  clf()
  sub_plot(2,2,0)
  rotate(50,60)
  surf(a)
  box()
  sub_plot(2,2,1)
  rotate(50,60)
  dens(a)
  box()
  sub_plot(2,2,2)
  rotate(50,60)
  cont(a)
  box()
  sub_plot(2,2,3)
  rotate(50,60)
  axial(a)
  box()
end


```
![image of type0.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/type0/type0.png)

## type1.rb

```ruby
PROCS['type1'] = proc do
  alpha(true)
  light(true)
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  set_transp_type(1)
  clf()
  sub_plot(2,2,0)
  rotate(50,60)
  surf(a)
  box()
  sub_plot(2,2,1)
  rotate(50,60)
  dens(a)
  box()
  sub_plot(2,2,2)
  rotate(50,60)
  cont(a)
  box()
  sub_plot(2,2,3)
  rotate(50,60)
  axial(a)
  box()
end


```
![image of type1.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/type1/type1.png)

## type2.rb

```ruby
PROCS['type2'] = proc do
  alpha(true)
  light(true)
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  set_transp_type(2)
  clf()
  sub_plot(2,2,0)
  rotate(50,60)
  surf(a)
  box()
  sub_plot(2,2,1)
  rotate(50,60)
  dens(a)
  box()
  sub_plot(2,2,2)
  rotate(50,60)
  cont(a)
  box()
  sub_plot(2,2,3)
  rotate(50,60)
  axial(a)
  box()
end


```
![image of type2.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/type2/type2.png)

## vect.rb

```ruby
PROCS['vect'] = proc do
  a = MathGL::MglData.new
  b = MathGL::MglData.new
  mgls_prepare2v(a,b)
  if !$mini
    sub_plot(3,2,0,"")
    title("Vect plot (default)")
  end
  box()
  vect(a,b)
  if $mini
    return
  end
  sub_plot(3,2,1,"")
  title("'.' style; '=' style")
  box()
  vect(a,b,"=.")
  sub_plot(3,2,2,"")
  title("'f' style")
  box()
  vect(a,b,"f")
  sub_plot(3,2,3,"")
  title("'>' style")
  box()
  vect(a,b,">")
  sub_plot(3,2,4,"")
  title("'<' style")
  box()
  vect(a,b,"<")
  ex = MathGL::MglData.new
  ey = MathGL::MglData.new
  ez = MathGL::MglData.new
  mgls_prepare3v(ex,ey,ez)
  sub_plot(3,2,5)
  title("3d variant")
  rotate(50,60)
  box()
  vect(ex,ey,ez)
end


```
![image of vect.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/vect/vect.png)

## vecta.rb

```ruby
PROCS['vecta'] = proc do
  ex = MathGL::MglData.new
  ey = MathGL::MglData.new
  ez = MathGL::MglData.new
  mgls_prepare3v(ex,ey,ez)
  if !$mini
    sub_plot(2,1,0)
    title("Vect3 sample")
  end
  rotate(50,60)
  set_origin(0,0,0)
  axis("_xyz")
  box()
  vect3(ex,ey,ez,"x")
  vect3(ex,ey,ez)
  vect3(ex,ey,ez,"z")
  if $mini
    return
  end
  sub_plot(2,1,1)
  title("'f' style")
  rotate(50,60)
  set_origin(0,0,0)
  axis("_xyz")
  box()
  vect3(ex,ey,ez,"fx")
  vect3(ex,ey,ez,"f")
  vect3(ex,ey,ez,"fz")
  grid3(ex,"Wx")
  grid3(ex,"W")
  grid3(ex,"Wz")
end


```
![image of vecta.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/vecta/vecta.png)

## venn.rb

```ruby
PROCS['venn'] = proc do
  xx = [-0.3,0,0.3]
  yy = [0.3,-0.3,0.3]
  ee = [0.7,0.7,0.7]
  x = MathGL::MglData.new(xx)
  y = MathGL::MglData.new(yy)
  e = MathGL::MglData.new(ee)
  sub_plot(1,1,0)
  title("Venn-like diagram")
  alpha(true)
  error(x,y,e,e,"!rgb@#o")
end


```
![image of venn.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/venn/venn.png)
