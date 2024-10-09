execute store result score <ticks> variable run scoreboard players get @s parkour_4.shortest_time.time
execute unless score <ticks> variable matches 1.. run return 0

function pandamium:impl/parkour/get_formatted_time 

tellraw @s [{"text":"[Parkour]","color":"aqua"},[{"text":" Your ","color":"dark_aqua"},{"text":"best time","color":"aqua"}," is ",{"storage":"pandamium:temp","nbt":"formatted_time","interpret":true},"!"]]
