execute unless block ~ ~ ~ chest run setblock ~ ~ ~ chest[facing=west,type=right]
execute unless block ~ ~ ~1 chest run setblock ~ ~ ~1 chest[facing=west,type=left]

function pandamium:misc/jail_items/check_can_insert
scoreboard players operation <can_insert_left> variable = <can_insert> variable
execute positioned ~ ~ ~1 run function pandamium:misc/jail_items/check_can_insert
scoreboard players operation <can_insert_right> variable = <can_insert> variable

execute if score <can_insert_left> variable matches 0 if score <can_insert_right> variable matches 1 run tp ~ ~ ~1
execute if score <can_insert_left> variable matches 0 if score <can_insert_right> variable matches 0 run tp ~ ~1 ~
execute if score <can_insert_left> variable matches 0 if score <can_insert_right> variable matches 0 at @s run function pandamium:misc/jail_items/pick_chest
