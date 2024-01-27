scoreboard players operation <ticks> variable = @s parkour_3.best_time
function pandamium:impl/parkour/get_formatted_time 

tellraw @s [{"text":"[Parkour]","color":"aqua"},[{"text":" Your ","color":"dark_aqua"},{"text":"best time","color":"aqua"}," is ",{"storage":"pandamium:temp","nbt":"formatted_time","interpret":true},"!"]]
