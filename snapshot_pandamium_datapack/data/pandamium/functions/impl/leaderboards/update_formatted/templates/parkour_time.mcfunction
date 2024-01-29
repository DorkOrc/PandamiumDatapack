execute store result score <ticks> variable run data get storage pandamium:temp entries[0].value -1
function pandamium:utils/get/time_from_ticks_without_days

data modify storage pandamium:temp parts set value ["","","₀","₀"]
execute if score <minutes> variable matches 0..9 run data modify storage pandamium:temp parts[0] set value "0"
execute if score <seconds> variable matches 0..9 run data modify storage pandamium:temp parts[1] set value "0"

scoreboard players operation <ticks> variable *= #100 constant
execute store result score <digit_0> variable store result score <digit_1> variable run scoreboard players operation <ticks> variable /= #ticks_per_second constant
execute store result storage pandamium:templates macro.value.value int 1 run scoreboard players operation <digit_0> variable /= #10 constant
function pandamium:utils/get/subscript_digit with storage pandamium:templates macro.value
data modify storage pandamium:temp parts[2] set from storage pandamium:temp subscript_digit
execute store result storage pandamium:templates macro.value.value int 1 run scoreboard players operation <digit_1> variable %= #10 constant
function pandamium:utils/get/subscript_digit with storage pandamium:templates macro.value
data modify storage pandamium:temp parts[3] set from storage pandamium:temp subscript_digit

execute if score <hours> variable matches 0 if score <minutes> variable matches 0 in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '[{"score":{"name":"<seconds>","objective":"variable"},"color":"green","bold":true},[{"text":".","color":"dark_green","bold":false},{"storage":"pandamium:temp","nbt":"parts[2]"},{"storage":"pandamium:temp","nbt":"parts[3]"}]," seconds"]'
execute if score <hours> variable matches 0 if score <minutes> variable matches 1.. in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '[{"storage":"pandamium:temp","nbt":"parts[0]","color":"green","bold":true},{"score":{"name":"<minutes>","objective":"variable"}},":",{"storage":"pandamium:temp","nbt":"parts[1]"},{"score":{"name":"<seconds>","objective":"variable"}},[{"text":".","color":"dark_green","bold":false},{"storage":"pandamium:temp","nbt":"parts[2]"},{"storage":"pandamium:temp","nbt":"parts[3]"}]]'
execute if score <hours> variable matches 1.. in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '[{"score":{"name":"<hours>","objective":"variable"},"color":"green","bold":true},":",{"storage":"pandamium:temp","nbt":"parts[0]"},{"score":{"name":"<minutes>","objective":"variable"}},":",{"storage":"pandamium:temp","nbt":"parts[1]"},{"score":{"name":"<seconds>","objective":"variable"}},[{"text":".","color":"dark_green","bold":false},{"storage":"pandamium:temp","nbt":"parts[2]"},{"storage":"pandamium:temp","nbt":"parts[3]"}]]'

execute store result score <flag_as_unconfirmed> variable run data get storage pandamium:temp entries[0].players[0].unconfirmed
execute if score <flag_as_unconfirmed> variable matches 1 in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '[{"block":"3 0 0","nbt":"front_text.messages[0]","interpret":true}," ",{"text":"⚠","color":"yellow","bold":false}]'

execute in pandamium:staff_world run data modify storage pandamium:temp format[-1].template_result set from block 3 0 0 front_text.messages[0]
