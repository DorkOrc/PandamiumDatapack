execute in the_end positioned 100 48 0 if entity @s[distance=..1] run function pandamium:impl/queue/append/teleport_to_end_platform

execute if predicate pandamium:in_dimension/the_nether run scoreboard players set @s in_dimension -1
execute if predicate pandamium:in_dimension/overworld run scoreboard players set @s in_dimension 0
execute if predicate pandamium:in_dimension/the_end run scoreboard players set @s in_dimension 1
execute if predicate pandamium:in_dimension/staff_world run scoreboard players set @s in_dimension 2
xp add @s 0

scoreboard players reset @s selected_block.x
scoreboard players reset @s selected_block.y
scoreboard players reset @s selected_block.z

advancement revoke @s only pandamium:detect/change_dimension
