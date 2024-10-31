data modify storage pandamium:temp compound_copy set from storage pandamium:text compound

function pandamium:utils/text/remove_formatting_from_compound

data remove storage pandamium:temp compound_copy.text
data remove storage pandamium:temp compound_copy.extra
data remove storage pandamium:temp compound_copy.color
data modify storage pandamium:text compound merge from storage pandamium:temp compound_copy
data remove storage pandamium:temp compound_copy

data modify storage pandamium:text characters set value []
data modify storage pandamium:text characters append from storage pandamium:text compound.text

execute store result storage pandamium:templates macro.red__green__blue.red int 1 run scoreboard players get <start_red> variable
execute store result storage pandamium:templates macro.red__green__blue.green int 1 run scoreboard players get <start_green> variable
execute store result storage pandamium:templates macro.red__green__blue.blue int 1 run scoreboard players get <start_blue> variable
function pandamium:impl/font/custom_styles/gradient/get_colour/main with storage pandamium:templates macro.red__green__blue

data modify storage pandamium:text compound merge from storage pandamium:text compound.extra[0]
data remove storage pandamium:text compound.extra[0]
execute unless data storage pandamium:text compound.extra[0] run data remove storage pandamium:text compound.extra
