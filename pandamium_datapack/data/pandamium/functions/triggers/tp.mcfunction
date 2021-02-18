tag @s add running_trigger

execute if score @s tp matches 1 run function pandamium:tpa/print_menu

execute if score @s tp matches 2.. run scoreboard players set <player_exists> variable 0
execute if score @s tp matches 2.. as @a if score @p[tag=running_trigger] tp = @s id run scoreboard players set <player_exists> variable 1
execute if score @s tp matches 2.. if score <player_exists> variable matches 0 run tellraw @s [{"text":"","color":"red"},{"text":"[TP]","color":"dark_red"}," No player was found!"]

execute if score @s tp matches 2.. as @a if score @p[tag=running_trigger] tp = @s id at @s as @p[tag=running_trigger] run function pandamium:misc/teleport/main
execute if score @s tp matches 2.. as @a if score @p[tag=running_trigger] tp = @s id run tellraw @p[tag=running_trigger] [{"text":"","color":"yellow"},{"text":"[TP]","color":"gold"}," You teleported to ",{"selector":"@s"},"!"]

tag @s remove running_trigger
scoreboard players reset @s tp
scoreboard players enable @s tp
