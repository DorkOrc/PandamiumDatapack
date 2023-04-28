scoreboard players set <new_best_time> variable 0
execute unless score @s parkour_1.best_time = @s parkour_1.best_time run scoreboard players set @s parkour_1.best_time 2147483647
execute store success score <new_best_time> variable if score @s parkour.timer_ticks < @s parkour_1.best_time run scoreboard players operation @s parkour_1.best_time = @s parkour.timer_ticks

execute if score <new_best_time> variable matches 0 run tellraw @s [{"text":"[Parkour] ","color":"aqua"},[{"text":"Finished ","color":"dark_aqua"},{"text":"Caves & Cliffs Parkour","bold":true,"color":"aqua"}," in ",{"score":{"name":"<timer_seconds>","objective":"variable"},"bold":true,"color":"aqua"},{"text":" seconds","color":"aqua"},"!"]]
execute if score <new_best_time> variable matches 1 run tellraw @s [{"text":"[Parkour] ","color":"aqua"},[{"text":"Finished ","color":"dark_aqua"},{"text":"Caves & Cliffs Parkour","bold":true,"color":"aqua"}," in ",{"score":{"name":"<timer_seconds>","objective":"variable"},"bold":true,"color":"aqua"},{"text":" seconds","color":"aqua"},"! (",{"text":"NEW BEST","bold":true},")"]]
execute if score <new_best_time> variable matches 1 run function pandamium:impl/leaderboards/update_self/parkour_1
execute if score <new_best_time> variable matches 1 run function pandamium:impl/leaderboards/hologram/update_parkour_leaderboard_holograms

function pandamium:impl/parkour/parkour_1/tp_to_start
