execute if score @s home matches 1 run function pandamium:home/load_1
execute if score @s home matches 2 run function pandamium:home/load_2
execute if score @s home matches 3 run function pandamium:home/load_3
execute if score @s home matches 4 run function pandamium:home/load_4
execute if score @s home matches 5 run function pandamium:home/load_5

scoreboard players add @s temp_1 0
scoreboard players add @s temp_2 0
scoreboard players add @s temp_3 0

execute if entity @s[scores={temp_1=0,temp_2=0,temp_3=0}] run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" You have not set this home yet!","color":"red"}]

execute unless entity @s[scores={temp_1=0,temp_2=0,temp_3=0}] run function pandamium:home/go_run
