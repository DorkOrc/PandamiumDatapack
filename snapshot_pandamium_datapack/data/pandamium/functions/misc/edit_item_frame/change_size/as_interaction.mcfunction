tp @s ~.5 ~ ~.5
execute store result score <scaled_y> variable run data get entity @s Pos[1] 16

scoreboard players operation <temp_size> variable = <size> variable
scoreboard players add <temp_size> variable 3
execute if score <temp_size> variable matches ..1 run scoreboard players set <temp_size> variable 2
execute if score <temp_size> variable matches 8.. run scoreboard players set <temp_size> variable 7
execute store result score <altitude> variable store result entity @s width float 0.125 store result entity @s height float 0.125 run scoreboard players get <temp_size> variable
scoreboard players remove <altitude> variable 8
scoreboard players operation <scaled_y> variable -= <altitude> variable

execute store result entity @s Pos[1] double 0.0625 run scoreboard players get <scaled_y> variable
