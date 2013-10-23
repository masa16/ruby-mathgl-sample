
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
