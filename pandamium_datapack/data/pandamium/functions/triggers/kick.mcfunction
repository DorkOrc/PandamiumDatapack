tag @s add running_trigger

execute if score @p[tag=running_trigger] kick matches 1 run function pandamium:misc/print_nearest_non_staff_player

scoreboard players set <player_exists> variable 0
execute if score @p[tag=running_trigger] kick matches 2.. as @a if score @p[tag=running_trigger] kick = @s id run scoreboard players set <player_exists> variable 1
execute if score @p[tag=running_trigger] kick matches 2.. if score <player_exists> variable matches 0 run tellraw @p[tag=running_trigger] [{"text":"","color":"red"},{"text":"[Info]","color":"dark_red"}," No player was found!"]

execute if score @p[tag=running_trigger] kick matches 2.. as @a if score @p[tag=running_trigger] kick = @s id run function pandamium:misc/get_kicked

tag @s remove running_trigger
scoreboard players reset @s kick
scoreboard players enable @s kick
