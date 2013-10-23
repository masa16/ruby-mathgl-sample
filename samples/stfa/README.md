
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
