tag @s add running_trigger

scoreboard players set <player_exists> variable 0
execute as @a if score @p[tag=running_trigger] tp = @s id run scoreboard players set <player_exists> variable 1
execute if score <player_exists> variable matches 0 run tellraw @p[tag=running_trigger] [{"text":"","color":"red"},{"text":"[TP]","color":"dark_red"}," No player was found!"]

execute as @a if score @p[tag=running_trigger] tp = @s id run tp @p[tag=running_trigger] @s
execute as @a if score @p[tag=running_trigger] tp = @s id run tellraw @p[tag=running_trigger] [{"text":"","color":"yellow"},{"text":"[TP]","color":"gold"}," You teleported to ",{"selector":"@s"},"!"]

experience add @s 0

tag @s remove running_trigger
scoreboard players reset @s tp
scoreboard players enable @s tp
