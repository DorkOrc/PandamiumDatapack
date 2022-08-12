scoreboard players set <new_best_time> variable 0
execute unless score @s parkour_1.best_time = @s parkour_1.best_time run scoreboard players set @s parkour_1.best_time 2147483647
execute if score @s parkour.timer_ticks < @s parkour_1.best_time store success score <new_best_time> variable run function pandamium:misc/parkour/parkour_1/update_best_time

execute if score <new_best_time> variable matches 0 run tellraw @s [{"text":"[Parkour] ","color":"aqua"},[{"text":"Finished ","color":"dark_aqua"},{"text":"Caves & Cliffs Parkour","bold":true,"color":"aqua"}," in ",{"score":{"name":"<timer_seconds>","objective":"variable"},"bold":true,"color":"aqua"},{"text":" seconds","color":"aqua"},"!"]]
execute if score <new_best_time> variable matches 1 run tellraw @s [{"text":"[Parkour] ","color":"aqua"},[{"text":"Finished ","color":"dark_aqua"},{"text":"Caves & Cliffs Parkour","bold":true,"color":"aqua"}," in ",{"score":{"name":"<timer_seconds>","objective":"variable"},"bold":true,"color":"aqua"},{"text":" seconds","color":"aqua"},"! (",{"text":"NEW BEST","bold":true},")"]]
execute if score <new_best_time> variable matches 1 run function pandamium:misc/leaderboards/update_self/parkour_1

function pandamium:misc/parkour/parkour_1/tp_to_start
