function pandamium:utils/text/flatten_json/quick
execute in pandamium:staff_world run data modify entity @s text set value '{"text":""}'

data modify storage pandamium:text characters set value []
data modify storage pandamium:text characters append from storage pandamium:text output

execute store result storage pandamium:templates macro.red__green__blue.red int 1 run scoreboard players get <start_red> variable
execute store result storage pandamium:templates macro.red__green__blue.green int 1 run scoreboard players get <start_green> variable
execute store result storage pandamium:templates macro.red__green__blue.blue int 1 run scoreboard players get <start_blue> variable
function pandamium:impl/font/custom_styles/gradient/get_colour/main with storage pandamium:templates macro.red__green__blue

function pandamium:impl/font/reapply_root_attributes/main
