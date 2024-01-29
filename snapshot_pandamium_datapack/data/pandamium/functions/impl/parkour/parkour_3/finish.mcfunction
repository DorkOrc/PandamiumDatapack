scoreboard players set <new_best_time> variable 0
execute unless score @s parkour_3.best_time_real = @s parkour_3.best_time_real run scoreboard players set @s parkour_3.best_time_real 2147483647
execute store success score <new_best_time> variable if score @s parkour.timer_ticks < @s parkour_3.best_time_real
execute if score <new_best_time> variable matches 1 run scoreboard players operation @s parkour_3.best_time_real = @s parkour.timer_ticks
execute if score <new_best_time> variable matches 1 if score @s parkour_3.best_time_real < @s parkour_3.best_time run scoreboard players reset @s parkour_3.best_time

scoreboard players set <new_best_deathless_time> variable 0
execute if score @s parkour.falls matches 0 unless score @s parkour_3.best_time_deathless = @s parkour_3.best_time_deathless run scoreboard players set @s parkour_3.best_time_deathless 2147483647
execute if score @s parkour.falls matches 0 if score @s parkour.timer_ticks < @s parkour_3.best_time_deathless run scoreboard players set <new_best_deathless_time> variable 1
execute if score <new_best_deathless_time> variable matches 1 run scoreboard players operation @s parkour_3.best_time_deathless = @s parkour.timer_ticks

advancement grant @s only pandamium:pandamium/parkour/parkour_3/finish
execute if score @s parkour_3.best_time_real matches ..2399 run advancement grant @s only pandamium:pandamium/parkour/parkour_3/finish_hard

scoreboard players operation <ticks> variable = @s parkour.timer_ticks
function pandamium:impl/parkour/get_formatted_time

execute if score <new_best_time> variable matches 0 if score <new_best_deathless_time> variable matches 0 run tellraw @s [{"text":"[Parkour] ","color":"aqua"},[{"text":"Finished the ","color":"dark_aqua"},{"storage":"pandamium:dictionary","nbt":"parkour.parkour_3.name","interpret":true,"bold":true,"color":"aqua"}," parkour course in ",{"storage":"pandamium:temp","nbt":"formatted_time","interpret":true}," and fell ",{"score":{"name":"@s","objective":"parkour.falls"},"color":"aqua","bold":true}," times!"]]
execute if score <new_best_time> variable matches 1 if score <new_best_deathless_time> variable matches 0 run tellraw @s [{"text":"[Parkour] ","color":"aqua"},[{"text":"Finished the ","color":"dark_aqua"},{"storage":"pandamium:dictionary","nbt":"parkour.parkour_3.name","interpret":true,"bold":true,"color":"aqua"}," parkour course in ",{"storage":"pandamium:temp","nbt":"formatted_time","interpret":true}," and fell ",{"score":{"name":"@s","objective":"parkour.falls"},"color":"aqua","bold":true}," times! (",{"text":"NEW BEST RUN","bold":true},")"]]
execute if score <new_best_time> variable matches 0 if score <new_best_deathless_time> variable matches 1 run tellraw @s [{"text":"[Parkour] ","color":"aqua"},[{"text":"Finished the ","color":"dark_aqua"},{"storage":"pandamium:dictionary","nbt":"parkour.parkour_3.name","interpret":true,"bold":true,"color":"aqua"}," parkour course in ",{"storage":"pandamium:temp","nbt":"formatted_time","interpret":true}," and fell ",{"score":{"name":"@s","objective":"parkour.falls"},"color":"aqua","bold":true}," times! (",{"text":"NEW BEST DEATHLESS RUN","bold":true},")"]]
execute if score <new_best_time> variable matches 1 if score <new_best_deathless_time> variable matches 1 run tellraw @s [{"text":"[Parkour] ","color":"aqua"},[{"text":"Finished the ","color":"dark_aqua"},{"storage":"pandamium:dictionary","nbt":"parkour.parkour_3.name","interpret":true,"bold":true,"color":"aqua"}," parkour course in ",{"storage":"pandamium:temp","nbt":"formatted_time","interpret":true}," and fell ",{"score":{"name":"@s","objective":"parkour.falls"},"color":"aqua","bold":true}," times! (",{"text":"NEW BEST RUN AND NEW BEST DEATHLESS RUN","bold":true},")"]]

execute if score <new_best_time> variable matches 1 run function pandamium:misc/leaderboards/update_own_place/parkour_3
execute if score <new_best_time> variable matches 1 run function pandamium:misc/leaderboards/refresh_holograms
execute if score <new_best_deathless_time> variable matches 1 run function pandamium:misc/leaderboards/update_own_place/parkour_3_deathless
execute if score <new_best_deathless_time> variable matches 1 run function pandamium:misc/leaderboards/refresh_holograms

#function pandamium:impl/parkour/parkour_3/tp_to_start
