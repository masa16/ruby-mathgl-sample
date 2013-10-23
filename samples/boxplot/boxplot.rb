PROCS['boxplot'] = proc do
  a = MathGL::MglData.new(10,7)
  a.modify("(2*rnd-1)^3/2")
  if !$mini
    sub_plot(1,1,0,"")
    title("Boxplot plot")
  end
  box()
  box_plot(a)
end

