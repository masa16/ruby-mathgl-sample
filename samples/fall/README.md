
## fall.rb

```ruby
PROCS['fall'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  if !$mini
    title("Fall plot")
  end
  rotate(50,60)
  box()
  fall(a)
end
```
![image of fall.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/fall/fall.png)
