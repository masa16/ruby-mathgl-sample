
## dew.rb

```ruby
PROCS['dew'] = proc do
  a = MathGL::MglData.new
  b = MathGL::MglData.new
  mgls_prepare2v(a,b)
  if !$mini
    sub_plot(1,1,0,"")
    title("Dew plot")
  end
  box()
  light(true)
  dew(a,b)
end


```
![image of dew.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/dew/dew.png)
