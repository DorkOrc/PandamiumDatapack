execute if score @s sethome matches 1 run function pandamium:home/set_check_dimension
execute if score @s sethome matches 2..5 if score @s gameplay_perms matches 1 run function pandamium:home/set_check_dimension

execute if score @s sethome matches 2..5 if score @s gameplay_perms matches 0 run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" Only donators can use more than one home! You can check the Discord for more information on how to donate.","color":"red"}]