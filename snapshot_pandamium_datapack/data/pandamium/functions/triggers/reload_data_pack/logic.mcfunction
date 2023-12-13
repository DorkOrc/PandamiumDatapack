execute unless score @s staff_perms matches 1.. run return run tellraw @s [{"text":"[Reload Data Pack]","color":"dark_red"},{"text":" You do not have permission to use this trigger!","color":"red"}]

scoreboard players operation <ticks_until_reload> variable = <ticks_since_time_change> global
scoreboard players remove <ticks_until_reload> variable 600
scoreboard players operation <ticks_until_reload> variable %= #18000 constant
scoreboard players operation <ticks_until_reload> variable *= #-1 constant
scoreboard players add <ticks_until_reload> variable 18000

scoreboard players operation <minutes_until_reload> variable = <ticks_until_reload> variable
scoreboard players operation <minutes_until_reload> variable /= #ticks_per_minute constant
scoreboard players operation <seconds_until_reload> variable = <ticks_until_reload> variable
scoreboard players operation <second_until_reload> variable /= #ticks_per_second constant
execute if score <seconds_until_reload> variable matches ..4 run scoreboard players set <second_until_reload> variable 5

execute if score <seconds_until_reload> variable matches ..59 run data modify storage pandamium:temp time_until_reload set value '["≈",{"score":{"name":"<seconds_until_reload>","objective":"variable"}}," seconds"]'
execute if score <seconds_until_reload> variable matches 60.. run data modify storage pandamium:temp time_until_reload set value '["≈",{"score":{"name":"<minutes_until_reload>","objective":"variable"}}," minutes"]'

execute if score <reload_data_pack> global matches 1 run return run tellraw @s [{"text":"[Reload Data Pack]","color":"dark_red"},[{"text":" The data pack is already scheduled to be reloaded in ","color":"red"},{"storage":"pandamium:temp","nbt":"time_until_reload","bold":true,"interpret":true}],"!"]

scoreboard players set <reload_data_pack> global 1
tellraw @s [{"text":"[Reload Data Pack]","color":"dark_green"},[{"text":" Scheduled the data pack to be reloaded in ","color":"green"},{"storage":"pandamium:temp","nbt":"time_until_reload","color":"aqua","interpret":true}],"!"]
