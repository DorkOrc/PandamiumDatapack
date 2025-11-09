data modify storage pandamium:local functions."pandamium:impl/font/*".text set from storage pandamium:text input
data remove storage pandamium:local functions."pandamium:impl/font/*".text.text
data remove storage pandamium:local functions."pandamium:impl/font/*".text.extra
data remove storage pandamium:local functions."pandamium:impl/font/*".text.color

function pandamium:utils/text/flatten
data modify storage pandamium:text input set from storage pandamium:text output
function pandamium:utils/text/input/force_compound
data modify storage pandamium:text input merge from storage pandamium:local functions."pandamium:impl/font/*".text

execute store result storage pandamium:local functions."pandamium:impl/font/*".red int 1 run scoreboard players get <start_red> variable
execute store result storage pandamium:local functions."pandamium:impl/font/*".green int 1 run scoreboard players get <start_green> variable
execute store result storage pandamium:local functions."pandamium:impl/font/*".blue int 1 run scoreboard players get <start_blue> variable
function pandamium:impl/font/custom_styles/gradient/get_color/main with storage pandamium:local functions."pandamium:impl/font/*"
data modify storage pandamium:text input.color set from storage pandamium:local functions."pandamium:impl/font/*".color

data modify storage pandamium:text result set from storage pandamium:text input
