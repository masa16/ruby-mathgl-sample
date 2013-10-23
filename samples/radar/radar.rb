PROCS['radar'] = proc do
  yr = MathGL::MglData.new(10,3)
  yr.modify("0.4*sin(pi*(2*x+y))+0.1*rnd")
  if !$mini
    sub_plot(1,1,0,"")
    title("Radar plot (with grid, '\\#')")
  end
  radar(yr,"#")
end

