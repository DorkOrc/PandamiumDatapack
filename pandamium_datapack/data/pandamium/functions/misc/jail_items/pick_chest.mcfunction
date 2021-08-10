execute unless block ~ ~ ~ chest run setblock ~ ~ ~ chest[facing=west,type=right]
execute unless block ~ ~ ~1 chest run setblock ~ ~ ~1 chest[facing=west,type=left]

function pandamium:misc/jail_items/check_can_insert
scoreboard players operation <can_insert_left> temp = <can_insert> temp
execute positioned ~ ~ ~1 run function pandamium:misc/jail_items/check_can_insert
scoreboard players operation <can_insert_right> temp = <can_insert> temp

execute if score <can_insert_left> temp matches 0 if score <can_insert_right> temp matches 1 run tp ~ ~ ~1
execute if score <can_insert_left> temp matches 0 if score <can_insert_right> temp matches 0 run tp ~ ~1 ~
execute if score <can_insert_left> temp matches 0 if score <can_insert_right> temp matches 0 at @s run function pandamium:misc/jail_items/pick_chest
