
execute store result score <tp_x> variable run data get entity @s Pos[0]
execute store result score <tp_z> variable run data get entity @s Pos[2]

execute if score <tp_x> variable matches ..-513 at @s run tp @s -512 ~ ~
execute if score <tp_x> variable matches 513.. at @s run tp @s 512 ~ ~
execute if score <tp_z> variable matches ..-513 at @s run tp @s ~ ~ -512
execute if score <tp_z> variable matches 513.. at @s run tp @s ~ ~ 512
