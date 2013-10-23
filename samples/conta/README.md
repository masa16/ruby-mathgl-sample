
## conta.rb

```ruby
PROCS['conta'] = proc do
  c = MathGL::MglData.new
  mgls_prepare3d(c)
  if !$mini
    title("Cont3 sample")
  end
  rotate(50,60)
  box()
  cont3(c,"x")
  cont3(c)
  cont3(c,"z")
end
```
![image of conta.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/conta/conta.png)
