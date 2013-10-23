
## cloud.rb

```ruby
PROCS['cloud'] = proc do
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  if !$mini
    sub_plot(2,2,0)
    title("Cloud plot")
  end
  rotate(50,60)
  alpha(true)
  box()
  cloud(c,"wyrRk")
  if $mini
    return
  end
  sub_plot(2,2,1)
  title("'!' style")
  rotate(50,60)
  box()
  cloud(c,"!wyrRk")
  sub_plot(2,2,2)
  title("'.' style")
  rotate(50,60)
  box()
  cloud(c,".wyrRk")
  sub_plot(2,2,3)
  title("meshnum 10")
  rotate(50,60)
  box()
  cloud(c,"wyrRk","meshnum 10")
end
```
![image of cloud.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/cloud/cloud.png)
