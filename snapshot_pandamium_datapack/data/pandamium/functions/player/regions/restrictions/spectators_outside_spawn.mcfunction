data modify storage pandamium:temp nbt set from entity @s
execute store result score <pos_x> variable run data get storage pandamium:temp nbt.Pos[0]
execute store result score <pos_z> variable run data get storage pandamium:temp nbt.Pos[2]

spectate

execute if score <pos_x> variable matches ..-513 at @s run tp -512 ~ ~
execute if score <pos_x> variable matches 513.. at @s run tp 512 ~ ~
execute if score <pos_z> variable matches ..-513 at @s run tp ~ ~ -512
execute if score <pos_z> variable matches 513.. at @s run tp ~ ~ 512

tellraw @s [{"text":"[Info] ","color":"dark_red"},{"text":"You may not leave spawn in spectator mode!","color":"red"}]
