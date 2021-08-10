execute store result score <tp_x> temp run data get entity @s Pos[0]
execute store result score <tp_z> temp run data get entity @s Pos[2]

execute unless score <tp_x> temp matches -512..512 run spectate
execute unless score <tp_z> temp matches -512..512 run spectate

execute if score <tp_x> temp matches ..-513 at @s run tp -512 ~ ~
execute if score <tp_x> temp matches 513.. at @s run tp 512 ~ ~
execute if score <tp_z> temp matches ..-513 at @s run tp ~ ~ -512
execute if score <tp_z> temp matches 513.. at @s run tp ~ ~ 512
