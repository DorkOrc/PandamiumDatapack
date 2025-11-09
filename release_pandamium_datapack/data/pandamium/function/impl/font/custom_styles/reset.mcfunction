data modify storage pandamium:local functions."pandamium:impl/font/*".text set from storage pandamium:text input
data remove storage pandamium:local functions."pandamium:impl/font/*".text.text
data remove storage pandamium:local functions."pandamium:impl/font/*".text.extra
data remove storage pandamium:local functions."pandamium:impl/font/*".text.color

function pandamium:utils/text/flatten
data modify storage pandamium:text input set from storage pandamium:text output
function pandamium:utils/text/input/force_compound
data modify storage pandamium:text input merge from storage pandamium:local functions."pandamium:impl/font/*".text
data modify storage pandamium:text result set from storage pandamium:text input

return 1
