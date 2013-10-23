
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
