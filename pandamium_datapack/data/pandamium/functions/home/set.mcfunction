execute store result score @s temp_1 run data get entity @s Pos[0]
execute store result score @s temp_2 run data get entity @s Pos[1]
execute store result score @s temp_3 run data get entity @s Pos[2]

execute if score @s sethome matches 1 run function pandamium:home/set_1

tellraw @s [{"text":"[Home]","color":"dark_green"},{"text":" Successfully set home ","color":"green"},{"score":{"name":"@s","objective":"sethome"},"color":"dark_green"},{"text":" to x=","color":"green"},{"score":{"name":"@s","objective":"temp_1"},"color":"dark_green"},{"text":" y=","color":"green"},{"score":{"name":"@s","objective":"temp_2"},"color":"dark_green"},{"text":" z=","color":"green"},{"score":{"name":"@s","objective":"temp_3"},"color":"dark_green"}]