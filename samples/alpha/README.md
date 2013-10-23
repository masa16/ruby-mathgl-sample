
## alpha.rb

```ruby
PROCS['alpha'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  sub_plot(2,2,0)
  title("default")
  rotate(50,60)
  box()
  surf(a)
  sub_plot(2,2,1)
  title("light on")
  rotate(50,60)
  box()
  light(true)
  surf(a)
  sub_plot(2,2,3)
  title("alpha on; light on")
  rotate(50,60)
  box()
  alpha(true)
  surf(a)
  sub_plot(2,2,2)
  title("alpha on")
  rotate(50,60)
  box()
  light(false)
  surf(a)
end


```
![image of alpha.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/alpha/alpha.png)
