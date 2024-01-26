scoreboard players set <new_best_time> variable 0
execute unless score @s parkour_3.best_time = @s parkour_3.best_time run scoreboard players set @s parkour_3.best_time 2147483647
execute store success score <new_best_time> variable if score @s parkour.timer_ticks < @s parkour_3.best_time run scoreboard players operation @s parkour_3.best_time = @s parkour.timer_ticks

scoreboard players operation <ticks> variable = @s parkour_3.best_time
function pandamium:impl/parkour/get_formatted_time 

execute if score <new_best_time> variable matches 0 run tellraw @s [{"text":"[Parkour] ","color":"aqua"},[{"text":"Finished the ","color":"dark_aqua"},{"storage":"pandamium:dictionary","nbt":"parkour.parkour_3.name","interpret":true,"bold":true,"color":"aqua"}," parkour course in ",{"storage":"pandamium:temp","nbt":"formatted_time","interpret":true},"!"]]
execute if score <new_best_time> variable matches 1 run tellraw @s [{"text":"[Parkour] ","color":"aqua"},[{"text":"Finished the ","color":"dark_aqua"},{"storage":"pandamium:dictionary","nbt":"parkour.parkour_3.name","interpret":true,"bold":true,"color":"aqua"}," parkour course in ",{"storage":"pandamium:temp","nbt":"formatted_time","interpret":true},"! (",{"text":"NEW BEST","bold":true},")"]]
execute if score <new_best_time> variable matches 1 run function pandamium:misc/leaderboards/update_own_place/parkour_3
execute if score <new_best_time> variable matches 1 run function pandamium:misc/leaderboards/refresh_holograms

#function pandamium:impl/parkour/parkour_3/tp_to_start
