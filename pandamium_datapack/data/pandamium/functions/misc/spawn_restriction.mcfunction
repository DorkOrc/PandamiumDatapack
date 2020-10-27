
execute store result score <temp_1> variable run data get entity @s Pos[0]
execute store result score <temp_2> variable run data get entity @s Pos[2]

execute if score <temp_1> variable matches ..-513 run scoreboard players set <temp_1> variable -512
execute if score <temp_1> variable matches 513.. run scoreboard players set <temp_1> variable 512
execute if score <temp_2> variable matches ..-513 run scoreboard players set <temp_2> variable -512
execute if score <temp_2> variable matches 513.. run scoreboard players set <temp_2> variable 512

execute at @s run tp @s 0 ~ 0

execute if score <temp_1> variable matches 512.. at @s run tp ~512 ~ ~
execute if score <temp_1> variable matches 512.. at @s run scoreboard players remove <temp_1> variable 512
execute if score <temp_1> variable matches 256.. at @s run tp ~256 ~ ~
execute if score <temp_1> variable matches 256.. at @s run scoreboard players remove <temp_1> variable 256
execute if score <temp_1> variable matches 128.. at @s run tp ~128 ~ ~
execute if score <temp_1> variable matches 128.. at @s run scoreboard players remove <temp_1> variable 128
execute if score <temp_1> variable matches 64.. at @s run tp ~64 ~ ~
execute if score <temp_1> variable matches 64.. at @s run scoreboard players remove <temp_1> variable 64
execute if score <temp_1> variable matches 32.. at @s run tp ~32 ~ ~
execute if score <temp_1> variable matches 32.. at @s run scoreboard players remove <temp_1> variable 32
execute if score <temp_1> variable matches 16.. at @s run tp ~16 ~ ~
execute if score <temp_1> variable matches 16.. at @s run scoreboard players remove <temp_1> variable 16
execute if score <temp_1> variable matches 8.. at @s run tp ~8 ~ ~
execute if score <temp_1> variable matches 8.. at @s run scoreboard players remove <temp_1> variable 8
execute if score <temp_1> variable matches 4.. at @s run tp ~4 ~ ~
execute if score <temp_1> variable matches 4.. at @s run scoreboard players remove <temp_1> variable 4
execute if score <temp_1> variable matches 2.. at @s run tp ~2 ~ ~
execute if score <temp_1> variable matches 2.. at @s run scoreboard players remove <temp_1> variable 2
execute if score <temp_1> variable matches 1.. at @s run tp ~1 ~ ~
execute if score <temp_1> variable matches 1.. at @s run scoreboard players remove <temp_1> variable 1

execute if score <temp_1> variable matches ..-512 at @s run tp ~-512 ~ ~
execute if score <temp_1> variable matches ..-512 at @s run scoreboard players add <temp_1> variable 512
execute if score <temp_1> variable matches ..-256 at @s run tp ~-256 ~ ~
execute if score <temp_1> variable matches ..-256 at @s run scoreboard players add <temp_1> variable 256
execute if score <temp_1> variable matches ..-128 at @s run tp ~-128 ~ ~
execute if score <temp_1> variable matches ..-128 at @s run scoreboard players add <temp_1> variable 128
execute if score <temp_1> variable matches ..-64 at @s run tp ~-64 ~ ~
execute if score <temp_1> variable matches ..-64 at @s run scoreboard players add <temp_1> variable 64
execute if score <temp_1> variable matches ..-32 at @s run tp ~-32 ~ ~
execute if score <temp_1> variable matches ..-32 at @s run scoreboard players add <temp_1> variable 32
execute if score <temp_1> variable matches ..-16 at @s run tp ~-16 ~ ~
execute if score <temp_1> variable matches ..-16 at @s run scoreboard players add <temp_1> variable 16
execute if score <temp_1> variable matches ..-8 at @s run tp ~-8 ~ ~
execute if score <temp_1> variable matches ..-8 at @s run scoreboard players add <temp_1> variable 8
execute if score <temp_1> variable matches ..-4 at @s run tp ~-4 ~ ~
execute if score <temp_1> variable matches ..-4 at @s run scoreboard players add <temp_1> variable 4
execute if score <temp_1> variable matches ..-2 at @s run tp ~-2 ~ ~
execute if score <temp_1> variable matches ..-2 at @s run scoreboard players add <temp_1> variable 2
execute if score <temp_1> variable matches ..-1 at @s run tp ~-1 ~ ~
execute if score <temp_1> variable matches ..-1 at @s run scoreboard players add <temp_1> variable 1

execute if score <temp_2> variable matches 512.. at @s run tp ~ ~ ~512
execute if score <temp_2> variable matches 512.. at @s run scoreboard players remove <temp_2> variable 512
execute if score <temp_2> variable matches 256.. at @s run tp ~ ~ ~256
execute if score <temp_2> variable matches 256.. at @s run scoreboard players remove <temp_2> variable 256
execute if score <temp_2> variable matches 128.. at @s run tp ~ ~ ~128
execute if score <temp_2> variable matches 128.. at @s run scoreboard players remove <temp_2> variable 128
execute if score <temp_2> variable matches 64.. at @s run tp ~ ~ ~64
execute if score <temp_2> variable matches 64.. at @s run scoreboard players remove <temp_2> variable 64
execute if score <temp_2> variable matches 32.. at @s run tp ~ ~ ~32
execute if score <temp_2> variable matches 32.. at @s run scoreboard players remove <temp_2> variable 32
execute if score <temp_2> variable matches 16.. at @s run tp ~ ~ ~16
execute if score <temp_2> variable matches 16.. at @s run scoreboard players remove <temp_2> variable 16
execute if score <temp_2> variable matches 8.. at @s run tp ~ ~ ~8
execute if score <temp_2> variable matches 8.. at @s run scoreboard players remove <temp_2> variable 8
execute if score <temp_2> variable matches 4.. at @s run tp ~ ~ ~4
execute if score <temp_2> variable matches 4.. at @s run scoreboard players remove <temp_2> variable 4
execute if score <temp_2> variable matches 2.. at @s run tp ~ ~ ~2
execute if score <temp_2> variable matches 2.. at @s run scoreboard players remove <temp_2> variable 2
execute if score <temp_2> variable matches 1.. at @s run tp ~ ~ ~1
execute if score <temp_2> variable matches 1.. at @s run scoreboard players remove <temp_2> variable 1

execute if score <temp_2> variable matches ..-512 at @s run tp ~ ~ ~-512
execute if score <temp_2> variable matches ..-512 at @s run scoreboard players add <temp_2> variable 512
execute if score <temp_2> variable matches ..-256 at @s run tp ~ ~ ~-256
execute if score <temp_2> variable matches ..-256 at @s run scoreboard players add <temp_2> variable 256
execute if score <temp_2> variable matches ..-128 at @s run tp ~ ~ ~-128
execute if score <temp_2> variable matches ..-128 at @s run scoreboard players add <temp_2> variable 128
execute if score <temp_2> variable matches ..-64 at @s run tp ~ ~ ~-64
execute if score <temp_2> variable matches ..-64 at @s run scoreboard players add <temp_2> variable 64
execute if score <temp_2> variable matches ..-32 at @s run tp ~ ~ ~-32
execute if score <temp_2> variable matches ..-32 at @s run scoreboard players add <temp_2> variable 32
execute if score <temp_2> variable matches ..-16 at @s run tp ~ ~ ~-16
execute if score <temp_2> variable matches ..-16 at @s run scoreboard players add <temp_2> variable 16
execute if score <temp_2> variable matches ..-8 at @s run tp ~ ~ ~-8
execute if score <temp_2> variable matches ..-8 at @s run scoreboard players add <temp_2> variable 8
execute if score <temp_2> variable matches ..-4 at @s run tp ~ ~ ~-4
execute if score <temp_2> variable matches ..-4 at @s run scoreboard players add <temp_2> variable 4
execute if score <temp_2> variable matches ..-2 at @s run tp ~ ~ ~-2
execute if score <temp_2> variable matches ..-2 at @s run scoreboard players add <temp_2> variable 2
execute if score <temp_2> variable matches ..-1 at @s run tp ~ ~ ~-1
execute if score <temp_2> variable matches ..-1 at @s run scoreboard players add <temp_2> variable 1

