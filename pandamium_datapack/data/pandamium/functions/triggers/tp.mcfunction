tag @s add running_trigger

execute if score @s tp matches 1 run function pandamium:tpa/print_menu

scoreboard players set <player_exists> variable 0
execute if score @s tp matches 2.. as @a if score @s id = @p[tag=running_trigger] tp run scoreboard players set <player_exists> variable 1
execute if score @s tp matches 2.. if score <player_exists> variable matches 0 run tellraw @s [{"text":"[TP]","color":"dark_red"},{"text":" Could not find that player!","color":"red"}]

execute if score <player_exists> variable matches 1 run gamemode spectator
execute if score <player_exists> variable matches 1 if score @s tp matches 2.. as @a if score @s id = @p[tag=running_trigger] tp at @s as @p[tag=running_trigger] run function pandamium:misc/teleport/main
execute if score <player_exists> variable matches 1 if score <spectator_mode> variable matches 0 if score @s tp matches 2.. as @a if score @s id = @p[tag=running_trigger] tp run tellraw @p[tag=running_trigger] [{"text":"","color":"yellow"},{"text":"[TP]","color":"gold"}," Teleported to ",{"selector":"@s"},"!"]
execute if score <player_exists> variable matches 1 if score <spectator_mode> variable matches 1 if score @s tp matches 2.. as @a if score @s id = @p[tag=running_trigger] tp run tellraw @p[tag=running_trigger] [{"text":"","color":"yellow"},{"text":"[TP]","color":"gold"}," Teleported to ",{"selector":"@s"}," in ",{"text":"spectator mode","color":"gold","bold":true},"!"]

tag @s remove running_trigger
scoreboard players reset @s tp
scoreboard players enable @s tp
