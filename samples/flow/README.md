
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
