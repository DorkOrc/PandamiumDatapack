
execute store result score <tp_x> variable run data get entity @s Pos[0]
execute store result score <tp_z> variable run data get entity @s Pos[2]

execute if score <tp_x> variable matches ..-513 run scoreboard players set <tp_x> variable -512
execute if score <tp_x> variable matches 513.. run scoreboard players set <tp_x> variable 512
execute if score <tp_z> variable matches ..-513 run scoreboard players set <tp_z> variable -512
execute if score <tp_z> variable matches 513.. run scoreboard players set <tp_z> variable 512

execute at @s run tp @s 0 ~ 0

execute if score <tp_x> variable matches 512.. at @s run tp ~512 ~ ~
execute if score <tp_x> variable matches 512.. at @s run scoreboard players remove <tp_x> variable 512
execute if score <tp_x> variable matches 256.. at @s run tp ~256 ~ ~
execute if score <tp_x> variable matches 256.. at @s run scoreboard players remove <tp_x> variable 256
execute if score <tp_x> variable matches 128.. at @s run tp ~128 ~ ~
execute if score <tp_x> variable matches 128.. at @s run scoreboard players remove <tp_x> variable 128
execute if score <tp_x> variable matches 64.. at @s run tp ~64 ~ ~
execute if score <tp_x> variable matches 64.. at @s run scoreboard players remove <tp_x> variable 64
execute if score <tp_x> variable matches 32.. at @s run tp ~32 ~ ~
execute if score <tp_x> variable matches 32.. at @s run scoreboard players remove <tp_x> variable 32
execute if score <tp_x> variable matches 16.. at @s run tp ~16 ~ ~
execute if score <tp_x> variable matches 16.. at @s run scoreboard players remove <tp_x> variable 16
execute if score <tp_x> variable matches 8.. at @s run tp ~8 ~ ~
execute if score <tp_x> variable matches 8.. at @s run scoreboard players remove <tp_x> variable 8
execute if score <tp_x> variable matches 4.. at @s run tp ~4 ~ ~
execute if score <tp_x> variable matches 4.. at @s run scoreboard players remove <tp_x> variable 4
execute if score <tp_x> variable matches 2.. at @s run tp ~2 ~ ~
execute if score <tp_x> variable matches 2.. at @s run scoreboard players remove <tp_x> variable 2
execute if score <tp_x> variable matches 1.. at @s run tp ~1 ~ ~
execute if score <tp_x> variable matches 1.. at @s run scoreboard players remove <tp_x> variable 1

execute if score <tp_x> variable matches ..-512 at @s run tp ~-512 ~ ~
execute if score <tp_x> variable matches ..-512 at @s run scoreboard players add <tp_x> variable 512
execute if score <tp_x> variable matches ..-256 at @s run tp ~-256 ~ ~
execute if score <tp_x> variable matches ..-256 at @s run scoreboard players add <tp_x> variable 256
execute if score <tp_x> variable matches ..-128 at @s run tp ~-128 ~ ~
execute if score <tp_x> variable matches ..-128 at @s run scoreboard players add <tp_x> variable 128
execute if score <tp_x> variable matches ..-64 at @s run tp ~-64 ~ ~
execute if score <tp_x> variable matches ..-64 at @s run scoreboard players add <tp_x> variable 64
execute if score <tp_x> variable matches ..-32 at @s run tp ~-32 ~ ~
execute if score <tp_x> variable matches ..-32 at @s run scoreboard players add <tp_x> variable 32
execute if score <tp_x> variable matches ..-16 at @s run tp ~-16 ~ ~
execute if score <tp_x> variable matches ..-16 at @s run scoreboard players add <tp_x> variable 16
execute if score <tp_x> variable matches ..-8 at @s run tp ~-8 ~ ~
execute if score <tp_x> variable matches ..-8 at @s run scoreboard players add <tp_x> variable 8
execute if score <tp_x> variable matches ..-4 at @s run tp ~-4 ~ ~
execute if score <tp_x> variable matches ..-4 at @s run scoreboard players add <tp_x> variable 4
execute if score <tp_x> variable matches ..-2 at @s run tp ~-2 ~ ~
execute if score <tp_x> variable matches ..-2 at @s run scoreboard players add <tp_x> variable 2
execute if score <tp_x> variable matches ..-1 at @s run tp ~-1 ~ ~
execute if score <tp_x> variable matches ..-1 at @s run scoreboard players add <tp_x> variable 1

execute if score <tp_z> variable matches 512.. at @s run tp ~ ~ ~512
execute if score <tp_z> variable matches 512.. at @s run scoreboard players remove <tp_z> variable 512
execute if score <tp_z> variable matches 256.. at @s run tp ~ ~ ~256
execute if score <tp_z> variable matches 256.. at @s run scoreboard players remove <tp_z> variable 256
execute if score <tp_z> variable matches 128.. at @s run tp ~ ~ ~128
execute if score <tp_z> variable matches 128.. at @s run scoreboard players remove <tp_z> variable 128
execute if score <tp_z> variable matches 64.. at @s run tp ~ ~ ~64
execute if score <tp_z> variable matches 64.. at @s run scoreboard players remove <tp_z> variable 64
execute if score <tp_z> variable matches 32.. at @s run tp ~ ~ ~32
execute if score <tp_z> variable matches 32.. at @s run scoreboard players remove <tp_z> variable 32
execute if score <tp_z> variable matches 16.. at @s run tp ~ ~ ~16
execute if score <tp_z> variable matches 16.. at @s run scoreboard players remove <tp_z> variable 16
execute if score <tp_z> variable matches 8.. at @s run tp ~ ~ ~8
execute if score <tp_z> variable matches 8.. at @s run scoreboard players remove <tp_z> variable 8
execute if score <tp_z> variable matches 4.. at @s run tp ~ ~ ~4
execute if score <tp_z> variable matches 4.. at @s run scoreboard players remove <tp_z> variable 4
execute if score <tp_z> variable matches 2.. at @s run tp ~ ~ ~2
execute if score <tp_z> variable matches 2.. at @s run scoreboard players remove <tp_z> variable 2
execute if score <tp_z> variable matches 1.. at @s run tp ~ ~ ~1
execute if score <tp_z> variable matches 1.. at @s run scoreboard players remove <tp_z> variable 1

execute if score <tp_z> variable matches ..-512 at @s run tp ~ ~ ~-512
execute if score <tp_z> variable matches ..-512 at @s run scoreboard players add <tp_z> variable 512
execute if score <tp_z> variable matches ..-256 at @s run tp ~ ~ ~-256
execute if score <tp_z> variable matches ..-256 at @s run scoreboard players add <tp_z> variable 256
execute if score <tp_z> variable matches ..-128 at @s run tp ~ ~ ~-128
execute if score <tp_z> variable matches ..-128 at @s run scoreboard players add <tp_z> variable 128
execute if score <tp_z> variable matches ..-64 at @s run tp ~ ~ ~-64
execute if score <tp_z> variable matches ..-64 at @s run scoreboard players add <tp_z> variable 64
execute if score <tp_z> variable matches ..-32 at @s run tp ~ ~ ~-32
execute if score <tp_z> variable matches ..-32 at @s run scoreboard players add <tp_z> variable 32
execute if score <tp_z> variable matches ..-16 at @s run tp ~ ~ ~-16
execute if score <tp_z> variable matches ..-16 at @s run scoreboard players add <tp_z> variable 16
execute if score <tp_z> variable matches ..-8 at @s run tp ~ ~ ~-8
execute if score <tp_z> variable matches ..-8 at @s run scoreboard players add <tp_z> variable 8
execute if score <tp_z> variable matches ..-4 at @s run tp ~ ~ ~-4
execute if score <tp_z> variable matches ..-4 at @s run scoreboard players add <tp_z> variable 4
execute if score <tp_z> variable matches ..-2 at @s run tp ~ ~ ~-2
execute if score <tp_z> variable matches ..-2 at @s run scoreboard players add <tp_z> variable 2
execute if score <tp_z> variable matches ..-1 at @s run tp ~ ~ ~-1
execute if score <tp_z> variable matches ..-1 at @s run scoreboard players add <tp_z> variable 1

