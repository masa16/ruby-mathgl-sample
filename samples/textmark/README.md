
## textmark.rb

```ruby
PROCS['textmark'] = proc do
  y = MathGL::MglData.new
  y1 = MathGL::MglData.new
  mgls_prepare1d(y,y1)
  if !$mini
    sub_plot(1,1,0,"")
    title("TextMark plot (default)")
  end
  box()
  text_mark(y,y1,"\\gamma","r")
end


```
![image of textmark.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/textmark/textmark.png)
