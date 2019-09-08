execute store result score @s home_1_x run data get entity @s Pos[0]
execute store result score @s home_1_y run data get entity @s Pos[1]
execute store result score @s home_1_z run data get entity @s Pos[2]

tellraw @s [{"text":"[Home]","color":"dark_green"},{"text":" Successfully set your home to x=","color":"green"},{"score":{"name":"@s","objective":"home_1_x"},"color":"dark_green"},{"text":" y=","color":"green"},{"score":{"name":"@s","objective":"home_1_y"},"color":"dark_green"},{"text":" z=","color":"green"},{"score":{"name":"@s","objective":"home_1_z"},"color":"dark_green"}]