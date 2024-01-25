scoreboard players operation <ticks> variable = @s parkour_3.best_time
function pandamium:utils/get/time_from_ticks_without_days

data modify storage pandamium:temp zeroes set value ["",""]
execute if score <minutes> variable matches 0..9 run data modify storage pandamium:temp zeroes[0] set value "0"
execute if score <seconds> variable matches 0..9 run data modify storage pandamium:temp zeroes[1] set value "0"

execute if score <hours> variable matches 0 if score <minutes> variable matches 0 run tellraw @s [{"text":"[Parkour]","color":"aqua"},[{"text":" Your ","color":"dark_aqua"},{"text":"best time","color":"aqua"}," is ",[{"score":{"name":"<seconds>","objective":"variable"},"color":"aqua","bold":true}," seconds"],"!"]]
execute if score <hours> variable matches 0 if score <minutes> variable matches 1.. run tellraw @s [{"text":"[Parkour]","color":"aqua"},[{"text":" Your ","color":"dark_aqua"},{"text":"best time","color":"aqua"}," is ",[{"storage":"pandamium:temp","nbt":"zeroes[0]","color":"aqua","bold":true},{"score":{"name":"<minutes>","objective":"variable"}},":",{"storage":"pandamium:temp","nbt":"zeroes[1]"},{"score":{"name":"<seconds>","objective":"variable"}}],"!"]]
execute if score <hours> variable matches 1.. run tellraw @s [{"text":"[Parkour]","color":"aqua"},[{"text":" Your ","color":"dark_aqua"},{"text":"best time","color":"aqua"}," is ",[{"score":{"name":"<hours>","objective":"variable"},"color":"aqua","bold":true},":",{"storage":"pandamium:temp","nbt":"zeroes[0]"},{"score":{"name":"<minutes>","objective":"variable"}},":",{"storage":"pandamium:temp","nbt":"zeroes[1]"},{"score":{"name":"<seconds>","objective":"variable"}}],"!"]]
