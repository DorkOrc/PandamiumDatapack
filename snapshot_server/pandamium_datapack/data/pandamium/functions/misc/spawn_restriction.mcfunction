# run AT @s

data modify storage pandamium:temp NBT set from entity @s
execute store result score <pos_x> variable run data get storage pandamium:temp NBT.Pos[0]
execute store result score <pos_z> variable run data get storage pandamium:temp NBT.Pos[2]

spectate

execute if score <pos_x> variable matches ..-513 at @s run tp -512 ~ ~
execute if score <pos_x> variable matches 513.. at @s run tp 512 ~ ~
execute if score <pos_z> variable matches ..-513 at @s run tp ~ ~ -512
execute if score <pos_z> variable matches 513.. at @s run tp ~ ~ 512
