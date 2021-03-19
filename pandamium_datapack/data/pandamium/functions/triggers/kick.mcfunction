tag @s add running_trigger

execute if score @s kick matches 1 run function pandamium:misc/print_nearest_non_staff_player

scoreboard players set <player_exists> variable 0
execute if score @s kick matches 2.. as @a if score @s id = @p[tag=running_trigger] kick run scoreboard players set <player_exists> variable 1
execute if score @s kick matches 2.. if score <player_exists> variable matches 0 run tellraw @s [{"text":"[Info]","color":"dark_red"},{"text":" Could not find that player!","color":"red"}]

execute if score @s kick matches 2.. as @a if score @s id = @p[tag=running_trigger] kick run function pandamium:misc/get_kicked

tag @s remove running_trigger
scoreboard players reset @s kick
scoreboard players enable @s kick
