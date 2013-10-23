
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
