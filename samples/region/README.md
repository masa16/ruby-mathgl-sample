
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
