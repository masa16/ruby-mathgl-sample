
## grad.rb

```ruby
PROCS['grad'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  if !$mini
    sub_plot(1,1,0,"")
    title("Grad plot")
  end
  box()
  grad(a)
  dens(a,"{u8}w{q8}")
end


```
![image of grad.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/grad/grad.png)
