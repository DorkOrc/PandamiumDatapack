# save statistics
function pandamium:utils/database/players/load/self

scoreboard players set <new_shortest_time> variable 0
execute unless score @s parkour_4.shortest_time.time = @s parkour_4.shortest_time.time run scoreboard players set @s parkour_4.shortest_time.time 2147483647
execute store success score <new_shortest_time> variable if score @s parkour.timer_ticks < @s parkour_4.shortest_time.time
execute if score <new_shortest_time> variable matches 1 run function pandamium:impl/parkour/parkour_4/save/shortest_time

scoreboard players set <new_sfewest_falls> variable 0
execute unless score @s parkour_4.fewest_falls.falls = @s parkour_4.fewest_falls.falls run scoreboard players set @s parkour_4.fewest_falls.falls 2147483647
execute store success score <new_fewest_falls> variable if score @s parkour.falls < @s parkour_4.fewest_falls.falls
execute if score <new_fewest_falls> variable matches 1 run function pandamium:impl/parkour/parkour_4/save/fewest_falls

data remove storage pandamium.db.players:io selected.entry.data.parkour.course_4.current_run

execute store result storage pandamium.db.players:io selected.entry.data.parkour.course_4.falls int 1 run scoreboard players get @s parkour_4.falls
execute store result storage pandamium.db.players:io selected.entry.data.parkour.course_4.completions int 1 run scoreboard players add @s parkour_4.completions 1

function pandamium:utils/database/players/save

#
advancement grant @s only pandamium:pandamium/parkour/course_4/complete_once complete_once
execute if score @s parkour_4.shortest_time.time matches ..9600 run advancement grant @s only pandamium:pandamium/parkour/course_4/complete_under_8_minutes complete_under_8_minutes
execute if score @s parkour_4.shortest_time.time matches ..3600 run advancement grant @s only pandamium:pandamium/parkour/course_4/complete_under_3_minutes complete_under_3_minutes
execute if score @s parkour_4.fewest_falls.falls matches 0 run advancement grant @s only pandamium:pandamium/parkour/course_4/complete_without_falling complete_without_falling

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
