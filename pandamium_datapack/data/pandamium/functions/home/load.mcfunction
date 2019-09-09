execute if score @s home matches 1 run function pandamium:home/get_1

scoreboard players add @s temp_1 0
scoreboard players add @s temp_2 0
scoreboard players add @s temp_3 0

execute if entity @s[scores={temp_1=0,temp_2=0,temp_3=0}] run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" You have not set this home yet!","color":"red"}]

execute unless entity @s[scores={temp_1=0,temp_2=0,temp_3=0}] run function pandamium:home/go