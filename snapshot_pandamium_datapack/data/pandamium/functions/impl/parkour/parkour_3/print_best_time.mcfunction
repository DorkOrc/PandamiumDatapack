execute store result score <ticks> variable run scoreboard players get @s parkour_3.best_time_real
execute if score @s parkour_3.best_time matches 1.. if score @s parkour_3.best_time < <ticks> variable store result score <ticks> variable run scoreboard players get @s parkour_3.best_time
execute unless score <ticks> variable matches 1.. run return 0

function pandamium:impl/parkour/get_formatted_time 

tellraw @s [{"text":"[Parkour]","color":"aqua"},[{"text":" Your ","color":"dark_aqua"},{"text":"best time","color":"aqua"}," is ",{"storage":"pandamium:temp","nbt":"formatted_time","interpret":true},"!"]]
