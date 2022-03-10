tag @s add running_trigger

execute if score @s playtime matches -1 if score @s playtime_ticks >= <ticks_per_day> variable store success score @s show_playtime_days unless score @s show_playtime_days matches 1
execute if score @s playtime matches -1 if score @s playtime_ticks >= <ticks_per_day> variable run scoreboard players set @s playtime 1
execute if score @s playtime matches -1 unless score @s playtime_ticks >= <ticks_per_day> variable run tellraw @s [{"text":"[Playtime]","color":"dark_red"},{"text":" Invalid option!","color":"red"}]
execute if score @s playtime matches ..-2 run tellraw @s [{"text":"[Playtime]","color":"dark_red"},{"text":" Invalid option!","color":"red"}]

execute if score @s playtime matches 1 if score @s staff_perms matches 1.. run function pandamium:misc/print_nearest_non_staff_player
execute if score @s playtime matches 1 run function pandamium:misc/print_playtime

scoreboard players set <player_exists> variable 0
execute if score @s playtime matches 2.. if score @s staff_perms matches 1.. as @a if score @s id = @p[tag=running_trigger] playtime store success score <player_exists> variable run function pandamium:misc/print_playtime
execute if score @s playtime matches 2.. if score <player_exists> variable matches 0 run tellraw @s [{"text":"[Playtime]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"playtime"}},"!"]]

tag @s remove running_trigger
scoreboard players reset @s playtime
scoreboard players enable @s playtime
