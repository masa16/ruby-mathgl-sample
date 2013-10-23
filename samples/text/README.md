
## text.rb

```ruby
PROCS['text'] = proc do
  if !$mini
    sub_plot(2,2,0,"")
  end
  #putsw([0,1],"Text can be inp ASCII and inp Unicode")
  puts([0,0.6],"It can be \\wire{wire}, \\big{big} or #r{colored}")
  puts([0,0.2],"One can change style inp string: \\b{bold}, \\i{italic, \\b{both}}")
  puts([0,-0.2],"Easy to \\a{overline} or \\u{underline}")
  puts([0,-0.6],"Easy to change indexes ^{up} _{down} @{center}")
  puts([0,-1],"It parse TeX: \\int \\alpha \\cdot \\sqrt3{sin(\\pi x)^2 + \\gamma_{i_k}} dx")
  if $mini
    return
  end
  sub_plot(2,2,1,"")
  puts([0,0.5], "\\sqrt{\\frac{\\alpha^{\\gamma^2}+\\overset 1{\\big\\infty}}{\\sqrt3{2+b}}}", "@", -2)
  puts([0,-0.5],"Text can be printed\non several lines")
  sub_plot(2,2,2,"")
  y = MathGL::MglData.new
  mgls_prepare1d(y)
  box()
  plot(y.sub_data(-1,0))
  text(y,"This is very very long string drawn along a curve","k")
  text(y,"Another string drawn above a curve","Tr")
  sub_plot(2,2,3,"")
  line([-1,-1],[1,-1],"rA")
  puts([0,-1],[1,-1],"Horizontal")
  line([-1,-1],[1,1],"rA")
  puts([0,0],[1,1],"At angle","@")
  line([-1,-1],[-1,1],"rA")
  puts([-1,0],[-1,1],"Vertical")
end


```
![image of text.rb](https://raw.github.com/masa16/ruby-mathgl-sample/master/samples/text/text.png)
