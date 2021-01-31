execute if entity @s run scoreboard players add <chest_num> variable 1

execute at @s store result score <right_slots_filled> variable run data get block ~ ~ ~ Items
execute at @s store result score <left_slots_filled> variable run data get block ~ ~ ~1 Items

execute if score <right_slots_filled> variable matches 27 if score <left_slots_filled> variable matches 27 at @s run tp @s ~ ~1 ~
execute if score <right_slots_filled> variable matches 27 unless score <left_slots_filled> variable matches 27 at @s run tp @s ~ ~ ~1

execute if score <right_slots_filled> variable matches 27 if score <left_slots_filled> variable matches 27 at @s unless block ~ ~ ~ chest run setblock ~ ~ ~ chest[facing=west,type=right]
execute if score <right_slots_filled> variable matches 27 if score <left_slots_filled> variable matches 27 at @s unless block ~ ~ ~1 chest run setblock ~ ~ ~1 chest[facing=west,type=left]
execute if score <right_slots_filled> variable matches 27 if score <left_slots_filled> variable matches 27 at @s run function pandamium:misc/jail_items/find_next_free_chest
