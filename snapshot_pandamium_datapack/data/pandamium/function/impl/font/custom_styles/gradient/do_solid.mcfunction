data modify storage pandamium:local functions."pandamium:impl/font/*".text set from storage pandamium:text result
data remove storage pandamium:local functions."pandamium:impl/font/*".text.text
data remove storage pandamium:local functions."pandamium:impl/font/*".text.extra
data remove storage pandamium:local functions."pandamium:impl/font/*".text.color

function do:text/flatten
data modify storage pandamium:text result set value {}
execute if data storage do:io output{} run data modify storage pandamium:text result set from storage do:io output
execute unless data storage do:io output{} run data modify storage pandamium:text result.text set from storage do:io output

data modify storage pandamium:text result merge from storage pandamium:local functions."pandamium:impl/font/*".text

execute store result storage pandamium:local functions."pandamium:impl/font/*".red int 1 run scoreboard players get <start_red> variable
execute store result storage pandamium:local functions."pandamium:impl/font/*".green int 1 run scoreboard players get <start_green> variable
execute store result storage pandamium:local functions."pandamium:impl/font/*".blue int 1 run scoreboard players get <start_blue> variable
function pandamium:impl/font/custom_styles/gradient/get_color/main with storage pandamium:local functions."pandamium:impl/font/*"
data modify storage pandamium:text result.color set from storage pandamium:local functions."pandamium:impl/font/*".color
