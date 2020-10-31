
scoreboard players reset <tp_x> variable
scoreboard players reset <tp_y> variable
scoreboard players reset <tp_z> variable
scoreboard players reset <tp_d> variable
scoreboard players set <can_tp> variable 0

execute if score @s home matches 1 run function pandamium:home/load_1
execute if score @s home matches 2 run function pandamium:home/load_2
execute if score @s home matches 3 run function pandamium:home/load_3
execute if score @s home matches 4 run function pandamium:home/load_4
execute if score @s home matches 5 run function pandamium:home/load_5
execute if score @s home matches 6 run function pandamium:home/load_6
execute if score @s home matches 7 run function pandamium:home/load_7
execute if score @s home matches 8 run function pandamium:home/load_8
execute if score @s home matches 9 run function pandamium:home/load_9
execute if score @s home matches 10 run function pandamium:home/load_10

execute if score <can_tp> variable matches 0 run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" You have not set this home yet!","color":"red"}]
execute if score <can_tp> variable matches 1 run function pandamium:home/go_run
