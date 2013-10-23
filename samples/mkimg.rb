
libdir = File.expand_path(File.dirname(__FILE__))
require 'mathgl'
require './prepare'
PROCS = {}
load './fexport/fexport.rb'
load './data1/data1.rb'
load './data2/data2.rb'
load './param1/param1.rb'
load './param2/param2.rb'
load './param3/param3.rb'
load './paramv/paramv.rb'
load './solve/solve.rb'
load './triangulation/triangulation.rb'
load './alpha/alpha.rb'
load './schemes/schemes.rb'
load './curvcoor/curvcoor.rb'
load './style/style.rb'
load './text/text.rb'
load './fonts/fonts.rb'
load './bars/bars.rb'
load './barh/barh.rb'
load './area/area.rb'
load './plot/plot.rb'
load './tens/tens.rb'
load './region/region.rb'
load './stem/stem.rb'
load './step/step.rb'
load './boxplot/boxplot.rb'
load './type0/type0.rb'
load './type1/type1.rb'
load './type2/type2.rb'
load './molecule/molecule.rb'
load './error/error.rb'
load './chart/chart.rb'
load './mark/mark.rb'
load './radar/radar.rb'
load './candle/candle.rb'
load './textmark/textmark.rb'
load './tube/tube.rb'
load './tape/tape.rb'
load './fog/fog.rb'
load './map/map.rb'
load './stfa/stfa.rb'
load './qo2d/qo2d.rb'
load './pde/pde.rb'
load './conta/conta.rb'
load './contfa/contfa.rb'
load './densa/densa.rb'
load './dens_xyz/dens_xyz.rb'
load './cont_xyz/cont_xyz.rb'
load './contf_xyz/contf_xyz.rb'
load './cloud/cloud.rb'
load './cont/cont.rb'
load './contf/contf.rb'
load './contd/contd.rb'
load './contv/contv.rb'
load './torus/torus.rb'
load './axial/axial.rb'
load './several_light/several_light.rb'
load './surf3/surf3.rb'
load './surf3a/surf3a.rb'
load './surf3c/surf3c.rb'
load './cut/cut.rb'
load './traj/traj.rb'
load './mesh/mesh.rb'
load './fall/fall.rb'
load './surf/surf.rb'
load './belt/belt.rb'
load './dens/dens.rb'
load './surfc/surfc.rb'
load './surfa/surfa.rb'
load './tile/tile.rb'
load './tiles/tiles.rb'
load './boxs/boxs.rb'
load './fit/fit.rb'
load './vecta/vecta.rb'
load './vect/vect.rb'
load './flow/flow.rb'
load './pipe/pipe.rb'
load './dew/dew.rb'
load './grad/grad.rb'
load './cones/cones.rb'
load './aspect/aspect.rb'
load './inplot/inplot.rb'
load './combined/combined.rb'
load './axis/axis.rb'
load './ticks/ticks.rb'
load './box/box.rb'
load './loglog/loglog.rb'
load './venn/venn.rb'
load './stereo/stereo.rb'
load './hist/hist.rb'
load './primitives/primitives.rb'
load './table/table.rb'
load './label/label.rb'
load './colorbar/colorbar.rb'
load './legend/legend.rb'
load './dat_diff/dat_diff.rb'
load './dat_extra/dat_extra.rb'
load './ternary/ternary.rb'
load './projection/projection.rb'
load './projection5/projection5.rb'
load './triplot/triplot.rb'
load './dots/dots.rb'
load './mirror/mirror.rb'

kind = 'png'
gr = MathGL::MglGraph.new
PROCS.each do |key,blk|
  Dir.chdir(key) do
    file = key+'.'+kind
    if !File.exist?(file)
      puts key
      gr.set_size(960,720)
      gr.vertex_color(false)
      gr.compression(false)
      gr.default_plot_param()
      gr.clf
      gr.instance_eval(&blk)
      case kind
      when 'eps'
        gr.write_eps(file)
      when 'png'
        gr.write_png(file,'',false)
      end
    end
  end
end
