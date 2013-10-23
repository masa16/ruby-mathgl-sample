
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
