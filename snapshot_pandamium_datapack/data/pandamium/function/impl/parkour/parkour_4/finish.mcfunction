scoreboard players set <new_shortest_time> variable 0
execute unless score @s parkour_4.shortest_time.time = @s parkour_4.shortest_time.time run scoreboard players set @s parkour_4.shortest_time.time 2147483647
execute store success score <new_shortest_time> variable if score @s parkour.timer_ticks < @s parkour_4.shortest_time.time
execute if score <new_shortest_time> variable matches 1 run scoreboard players operation @s parkour_4.shortest_time.time = @s parkour.timer_ticks
execute if score <new_shortest_time> variable matches 1 run scoreboard players operation @s parkour_4.shortest_time.falls = @s parkour.falls

scoreboard players set <new_sfewest_falls> variable 0
execute unless score @s parkour_4.fewest_falls.falls = @s parkour_4.fewest_falls.falls run scoreboard players set @s parkour_4.fewest_falls.falls 2147483647
execute store success score <new_fewest_falls> variable if score @s parkour.falls < @s parkour_4.fewest_falls.falls
execute if score <new_fewest_falls> variable matches 1 run scoreboard players operation @s parkour_4.fewest_falls.time = @s parkour.timer_ticks
execute if score <new_fewest_falls> variable matches 1 run scoreboard players operation @s parkour_4.fewest_falls.falls = @s parkour.falls

advancement grant @s only pandamium:pandamium/parkour/parkour_4/finish
execute if score @s parkour_4.shortest_time.time matches ..2399 run advancement grant @s only pandamium:pandamium/parkour/parkour_4/finish_hard
execute if score @s parkour_4.fewest_falls.falls matches 0 run advancement grant @s only pandamium:pandamium/parkour/parkour_4/finish_without_falling

scoreboard players operation <ticks> variable = @s parkour.timer_ticks
function pandamium:impl/parkour/get_formatted_time

execute if score <new_shortest_time> variable matches 1 run tellraw @a [{"text":"[Parkour] ","color":"blue"},[{"text":"","color":"dark_aqua"},{"selector":"@s"}," beat their best time in ",{"storage":"pandamium:dictionary","nbt":"parkour.parkour_4.name","interpret":true,"bold":true,"color":"aqua"},"! They got ",{"storage":"pandamium:temp","nbt":"formatted_time","interpret":true}," and fell ",{"score":{"name":"@s","objective":"parkour.falls"},"color":"aqua","bold":true}," times!"]]

execute if score <new_shortest_time> variable matches 0 if score <new_fewest_falls> variable matches 0 run tellraw @s [{"text":"[Parkour] ","color":"aqua"},[{"text":"Finished the ","color":"dark_aqua"},{"storage":"pandamium:dictionary","nbt":"parkour.parkour_4.name","interpret":true,"bold":true,"color":"aqua"}," parkour course in ",{"storage":"pandamium:temp","nbt":"formatted_time","interpret":true}," and fell ",{"score":{"name":"@s","objective":"parkour.falls"},"color":"aqua","bold":true}," times!"]]
execute if score <new_shortest_time> variable matches 1 if score <new_fewest_falls> variable matches 0 run tellraw @s [{"text":"[Parkour] ","color":"aqua"},[{"text":"Finished the ","color":"dark_aqua"},{"storage":"pandamium:dictionary","nbt":"parkour.parkour_4.name","interpret":true,"bold":true,"color":"aqua"}," parkour course in ",{"storage":"pandamium:temp","nbt":"formatted_time","interpret":true}," and fell ",{"score":{"name":"@s","objective":"parkour.falls"},"color":"aqua","bold":true}," times! (",{"text":"NEW SHORTEST RUN","bold":true},")"]]
execute if score <new_shortest_time> variable matches 0 if score <new_fewest_falls> variable matches 1 run tellraw @s [{"text":"[Parkour] ","color":"aqua"},[{"text":"Finished the ","color":"dark_aqua"},{"storage":"pandamium:dictionary","nbt":"parkour.parkour_4.name","interpret":true,"bold":true,"color":"aqua"}," parkour course in ",{"storage":"pandamium:temp","nbt":"formatted_time","interpret":true}," and fell ",{"score":{"name":"@s","objective":"parkour.falls"},"color":"aqua","bold":true}," times! (",{"text":"NEW LEAST FALLS","bold":true},")"]]
execute if score <new_shortest_time> variable matches 1 if score <new_fewest_falls> variable matches 1 run tellraw @s [{"text":"[Parkour] ","color":"aqua"},[{"text":"Finished the ","color":"dark_aqua"},{"storage":"pandamium:dictionary","nbt":"parkour.parkour_4.name","interpret":true,"bold":true,"color":"aqua"}," parkour course in ",{"storage":"pandamium:temp","nbt":"formatted_time","interpret":true}," and fell ",{"score":{"name":"@s","objective":"parkour.falls"},"color":"aqua","bold":true}," times! (",{"text":"NEW SHORTEST RUN AND NEW LEAST FALLS","bold":true},")"]]

execute if score <new_shortest_time> variable matches 1 run function pandamium:misc/leaderboards/update_own_place/parkour_4_shortest_time
execute if score <new_fewest_falls> variable matches 1 run function pandamium:misc/leaderboards/update_own_place/parkour_4_fewest_falls
scoreboard players set <refresh_holograms> variable 1
execute if score <new_shortest_time> variable matches 0 if score <new_fewest_falls> variable matches 0 run scoreboard players set <refresh_holograms> variable 0
execute if score <refresh_holograms> variable matches 1 run function pandamium:misc/leaderboards/refresh_holograms

#function pandamium:impl/parkour/parkour_4/tp_to_start