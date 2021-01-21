tag @s add running_trigger

execute if score @s playtime matches 1 if score @s staff_perms matches 1.. run function pandamium:misc/print_nearest_non_staff_player
execute if score @s playtime matches 1 run function pandamium:misc/get_playtime

execute if score @s playtime matches 2.. run scoreboard players set <player_exists> variable 0
execute if score @s playtime matches 2.. if score @s staff_perms matches 1.. as @a if score @p[tag=running_trigger] playtime = @s id run function pandamium:misc/get_playtime
execute if score @s playtime matches 2.. if score <player_exists> variable matches 0 run tellraw @s [{"text":"","color":"red"},{"text":"[Playtime]","color":"dark_red"}," Could not find that player!"]

tag @s remove running_trigger
scoreboard players reset @s playtime
scoreboard players enable @s playtime
