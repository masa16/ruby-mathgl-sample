
## fonts.rb

```ruby
PROCS['fonts'] = proc do
  h = 1.1
  d = 0.25
  load_font("STIX")
  puts([0,h], "default font (STIX)")
  load_font("adventor")
  puts([0,h-d], "adventor font")
  load_font("bonum")
  puts([0,h-2*d], "bonum font")
  load_font("chorus")
  puts([0,h-3*d], "chorus font")
  load_font("cursor")
  puts([0,h-4*d], "cursor font")
  load_font("heros")
  puts([0,h-5*d], "heros font")
  load_font("heroscn")
  puts([0,h-6*d], "heroscn font")
  load_font("pagella")
  puts([0,h-7*d], "pagella font")
  load_font("schola")
  puts([0,h-8*d], "schola font")
  load_font("termes")
  puts([0,h-9*d], "termes font")
  load_font("")
end


```
![image of fonts.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/fonts/fonts.png)
