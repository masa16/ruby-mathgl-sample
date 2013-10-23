
## stereo.rb

```ruby
PROCS['stereo'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  light(true)
  sub_plot(2,1,0)
  rotate(50,60+1)
  box()
  surf(a)
  sub_plot(2,1,1)
  rotate(50,60-1)
  box()
  surf(a)
end
```
![image of stereo.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/stereo/stereo.png)
