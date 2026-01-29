data modify storage pandamium:local functions."pandamium:impl/font/*".text set from storage pandamium:text result
data remove storage pandamium:local functions."pandamium:impl/font/*".text.text
data remove storage pandamium:local functions."pandamium:impl/font/*".text.extra
data remove storage pandamium:local functions."pandamium:impl/font/*".text.color

function do:text/flatten
data modify storage pandamium:text result set value {}
execute if data storage do:io output{} run data modify storage pandamium:text result set from storage do:io output
execute unless data storage do:io output{} run data modify storage pandamium:text result.text set from storage do:io output

data modify storage pandamium:text result merge from storage pandamium:local functions."pandamium:impl/font/*".text
data modify storage pandamium:text result.color set from storage pandamium:temp colour.literal

return 1
