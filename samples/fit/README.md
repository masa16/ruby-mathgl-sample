
## fit.rb

```ruby
PROCS['fit'] = proc do
  rnd = MathGL::MglData.new(100)
  inp = MathGL::MglData.new(100)
  res = MathGL::MglData.new
  fill(rnd,"0.4*rnd+0.1+sin(2*pi*x)")
  fill(inp,"0.3+sin(2*pi*x)")
  ini = [1,1,3]
  Ini = MathGL::MglData.new(ini)
  fit(rnd, "a+b*sin(c*x)", "abc", Ini)
  if !$mini
    title("Fitting sample")
  end
  set_range('y',-2,2)
  box()
  plot(rnd, ". ")
  axis()
  plot(res, "r")
  plot(inp, "b")
  puts([-0.9, -1.3], "fitted:", "r:")
  puts_fit([0, -1.8], "y = ", "r")
  puts([0, 2.2], "initial: y = 0.3+sin(2\\pi x)", "b")
end
```
![image of fit.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/fit/fit.png)
