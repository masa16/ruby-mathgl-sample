
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
