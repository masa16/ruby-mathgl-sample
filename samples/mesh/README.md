
## mesh.rb

```ruby
PROCS['mesh'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  if !$mini
    title("Mesh plot")
  end
  rotate(50,60)
  box()
  mesh(a)
end
```
![image of mesh.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/mesh/mesh.png)
