scoreboard players add <raycast_iters> temp 1

execute store result score <in_block_x> temp run data get entity @s Pos[0] 16
execute store result score <in_block_y> temp run data get entity @s Pos[1] 32
execute store result score <in_block_z> temp run data get entity @s Pos[2] 16
scoreboard players operation <in_block_x> temp %= <16> temp
scoreboard players operation <in_block_y> temp %= <32> temp
scoreboard players operation <in_block_z> temp %= <16> temp

execute if block ~ ~ ~ #standing_signs if score <in_block_x> temp matches 4..11 if score <in_block_y> temp matches 0..31 if score <in_block_z> temp matches 4..11 run scoreboard players set <in_sign> temp 1
execute if block ~ ~ ~ #wall_signs[facing=north] if score <in_block_x> temp matches 0..15 if score <in_block_y> temp matches 9..24 if score <in_block_z> temp matches 14..15 run scoreboard players set <in_sign> temp 1
execute if block ~ ~ ~ #wall_signs[facing=east] if score <in_block_x> temp matches 0..1 if score <in_block_y> temp matches 9..24 if score <in_block_z> temp matches 0..15 run scoreboard players set <in_sign> temp 1
execute if block ~ ~ ~ #wall_signs[facing=south] if score <in_block_x> temp matches 0..15 if score <in_block_y> temp matches 9..24 if score <in_block_z> temp matches 0..1 run scoreboard players set <in_sign> temp 1
execute if block ~ ~ ~ #wall_signs[facing=west] if score <in_block_x> temp matches 14..15 if score <in_block_y> temp matches 9..24 if score <in_block_z> temp matches 0..15 run scoreboard players set <in_sign> temp 1

execute if score <in_sign> temp matches 0 if score <raycast_iters> temp matches ..160 run tp ^ ^ ^0.03125
execute if score <in_sign> temp matches 0 if score <raycast_iters> temp matches ..160 at @s run function pandamium:misc/sign/raycast
