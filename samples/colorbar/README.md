
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
