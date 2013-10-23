
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