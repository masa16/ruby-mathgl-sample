
## tile.rb

```ruby
PROCS['tile'] = proc do
  a = MathGL::MglData.new
  mgls_prepare2d(a)
  if !$mini
    title("Tile plot")
  end
  rotate(40,60)
  box()
  tile(a)
end
```
![image of tile.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/tile/tile.png)
