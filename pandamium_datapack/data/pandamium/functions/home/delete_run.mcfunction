
execute if score @s delhome matches -1 run function pandamium:home/delete/delete_1
execute if score @s delhome matches -2 run function pandamium:home/delete/delete_2
execute if score @s delhome matches -3 run function pandamium:home/delete/delete_3
execute if score @s delhome matches -4 run function pandamium:home/delete/delete_4
execute if score @s delhome matches -5 run function pandamium:home/delete/delete_5
execute if score @s delhome matches -6 run function pandamium:home/delete/delete_6
execute if score @s delhome matches -7 run function pandamium:home/delete/delete_7
execute if score @s delhome matches -8 run function pandamium:home/delete/delete_8
execute if score @s delhome matches -9 run function pandamium:home/delete/delete_9
execute if score @s delhome matches -10 run function pandamium:home/delete/delete_10

scoreboard players set <-1> variable -1
scoreboard players operation @s delhome *= <-1> variable

tellraw @s [{"text":"","color":"green"},{"text":"[Home]","color":"dark_green"}," Deleted ",[{"text":"Home ","color":"aqua"},{"score":{"name":"@s","objective":"delhome"}}],"!"]
