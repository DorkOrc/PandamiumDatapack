execute store result score <in_block_x> variable run data get entity @s Pos[0] 16
execute if block ~ ~ ~ #wall_signs store result score <in_block_y> variable run data get entity @s Pos[1] 32
execute store result score <in_block_z> variable run data get entity @s Pos[2] 16
scoreboard players operation <in_block_x> variable %= #16 constant
scoreboard players operation <in_block_y> variable %= #32 constant
scoreboard players operation <in_block_z> variable %= #16 constant

execute if block ~ ~ ~ #standing_signs if score <in_block_x> variable matches 4..11 if score <in_block_z> variable matches 4..11 run scoreboard players set <raycast_in_block> variable 1

execute if block ~ ~ ~ #wall_signs[facing=north] if score <in_block_x> variable matches 0..15 if score <in_block_y> variable matches 9..24 if score <in_block_z> variable matches 14..15 run scoreboard players set <raycast_in_block> variable 1
execute if block ~ ~ ~ #wall_signs[facing=east] if score <in_block_x> variable matches 0..1 if score <in_block_y> variable matches 9..24 if score <in_block_z> variable matches 0..15 run scoreboard players set <raycast_in_block> variable 1
execute if block ~ ~ ~ #wall_signs[facing=south] if score <in_block_x> variable matches 0..15 if score <in_block_y> variable matches 9..24 if score <in_block_z> variable matches 0..1 run scoreboard players set <raycast_in_block> variable 1
execute if block ~ ~ ~ #wall_signs[facing=west] if score <in_block_x> variable matches 14..15 if score <in_block_y> variable matches 9..24 if score <in_block_z> variable matches 0..15 run scoreboard players set <raycast_in_block> variable 1
