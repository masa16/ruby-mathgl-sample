PROCS['legend'] = proc do
  add_legend("sin(\\pi {x^2})","b")
  add_legend("sin(\\pi x)","g*")
  add_legend("sin(\\pi \\sqrt{x})","rd")
  add_legend("just text"," ")
  add_legend("no indent for this","")
  if !$mini
    sub_plot(2,2,0,"")
    title("Legend (default)")
  end
  box()
  legend()
  if $mini
    return
  end
  legend(3,"A#")
  puts([0.75,0.65],"Absolute position","A")
  sub_plot(2,2,2,"")
  title("coloring")
  box()
  legend(0,"r#")
  legend(1,"Wb#")
  legend(2,"ygr#")
  sub_plot(2,2,3,"")
  title("manual position")
  box()
  legend(0.5,1)
  puts([0.5,0.55],"at x=0.5, y=1","a")
  legend(1,"#-")
  puts([0.75,0.25],"Horizontal legend","a")
end
