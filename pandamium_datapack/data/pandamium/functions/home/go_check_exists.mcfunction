
scoreboard players set <can_tp> variable 0

execute if score @s home matches 1 if score @s home_1_x = @s home_1_x run function pandamium:home/load/load_1
execute if score @s home matches 2 if score @s home_2_x = @s home_2_x run function pandamium:home/load/load_2
execute if score @s home matches 3 if score @s home_3_x = @s home_3_x run function pandamium:home/load/load_3
execute if score @s home matches 4 if score @s home_4_x = @s home_4_x run function pandamium:home/load/load_4
execute if score @s home matches 5 if score @s home_5_x = @s home_5_x run function pandamium:home/load/load_5
execute if score @s home matches 6 if score @s home_6_x = @s home_6_x run function pandamium:home/load/load_6
execute if score @s home matches 7 if score @s home_7_x = @s home_7_x run function pandamium:home/load/load_7
execute if score @s home matches 8 if score @s home_8_x = @s home_8_x run function pandamium:home/load/load_8
execute if score @s home matches 9 if score @s home_9_x = @s home_9_x run function pandamium:home/load/load_9
execute if score @s home matches 10 if score @s home_10_x = @s home_10_x run function pandamium:home/load/load_10

execute if score <can_tp> variable matches 0 run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" You have not set this home yet!","color":"red"}]
execute if score <can_tp> variable matches 1 run function pandamium:home/go_run
