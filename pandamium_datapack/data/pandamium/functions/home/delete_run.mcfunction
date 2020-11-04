
execute if score @s del_home matches -1 run function pandamium:home/delete/delete_1
execute if score @s del_home matches -2 run function pandamium:home/delete/delete_2
execute if score @s del_home matches -3 run function pandamium:home/delete/delete_3
execute if score @s del_home matches -4 run function pandamium:home/delete/delete_4
execute if score @s del_home matches -5 run function pandamium:home/delete/delete_5
execute if score @s del_home matches -6 run function pandamium:home/delete/delete_6
execute if score @s del_home matches -7 run function pandamium:home/delete/delete_7
execute if score @s del_home matches -8 run function pandamium:home/delete/delete_8
execute if score @s del_home matches -9 run function pandamium:home/delete/delete_9
execute if score @s del_home matches -10 run function pandamium:home/delete/delete_10

tellraw @s [{"text":"","color":"green"},{"text":"[Home]","color":"dark_green"}," Deleted ",[{"text":"Home ","color":"aqua"},{"score":{"name":"@s","objective":"del_home"}}],"!"]
