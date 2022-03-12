execute if score @s parkour_2.best_time = @s parkour_2.best_time run advancement grant @s only pandamium:pandamium/parkour/parkour_2/complete_parkour_twice

scoreboard players set <new_best_time> variable 0
execute unless score @s parkour_2.best_time = @s parkour_2.best_time run scoreboard players set @s parkour_2.best_time 2147483647
execute if score @s parkour.timer_ticks < @s parkour_2.best_time store success score <new_best_time> variable run function pandamium:misc/parkour/parkour_2/update_best_time

execute if score <new_best_time> variable matches 0 run tellraw @s [{"text":"[Parkour] ","color":"aqua"},[{"text":"Finished ","color":"dark_aqua"},{"text":"Monstrosity Parkour","bold":true,"color":"aqua"}," in ",{"score":{"name":"<timer_seconds>","objective":"variable"},"bold":true,"color":"aqua"},{"text":" seconds","color":"aqua"},"!"]]
execute if score <new_best_time> variable matches 1 run tellraw @s [{"text":"[Parkour] ","color":"aqua"},[{"text":"Finished ","color":"dark_aqua"},{"text":"Monstrosity Parkour","bold":true,"color":"aqua"}," in ",{"score":{"name":"<timer_seconds>","objective":"variable"},"bold":true,"color":"aqua"},{"text":" seconds","color":"aqua"},"! (",{"text":"NEW BEST","bold":true},")"]]

scoreboard players reset @s parkour_2.saved_time
scoreboard players reset @s parkour_2.saved_checkpoint
scoreboard players reset @s parkour_2.saved_x
scoreboard players reset @s parkour_2.saved_y
scoreboard players reset @s parkour_2.saved_z

scoreboard players reset @s parkour.quit
scoreboard players reset @s parkour.restart

function pandamium:misc/get_username
data modify storage pandamium:parkour parkour_2.completions append from storage pandamium:temp username
