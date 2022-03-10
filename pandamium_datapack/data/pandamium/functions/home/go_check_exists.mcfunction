scoreboard players set <cannot_go> variable 0

# Check if home exists
scoreboard players set <home_exists> variable 0
execute if score @s home matches 1 if score @s home_1_x = @s home_1_x store success score <home_exists> variable run function pandamium:home/load/load_1
execute if score @s home matches 2 if score @s home_2_x = @s home_2_x store success score <home_exists> variable run function pandamium:home/load/load_2
execute if score @s home matches 3 if score @s home_3_x = @s home_3_x store success score <home_exists> variable run function pandamium:home/load/load_3
execute if score @s home matches 4 if score @s home_4_x = @s home_4_x store success score <home_exists> variable run function pandamium:home/load/load_4
execute if score @s home matches 5 if score @s home_5_x = @s home_5_x store success score <home_exists> variable run function pandamium:home/load/load_5
execute if score @s home matches 6 if score @s home_6_x = @s home_6_x store success score <home_exists> variable run function pandamium:home/load/load_6
execute if score @s home matches 7 if score @s home_7_x = @s home_7_x store success score <home_exists> variable run function pandamium:home/load/load_7
execute if score @s home matches 8 if score @s home_8_x = @s home_8_x store success score <home_exists> variable run function pandamium:home/load/load_8
execute if score @s home matches 9 if score @s home_9_x = @s home_9_x store success score <home_exists> variable run function pandamium:home/load/load_9
execute if score @s home matches 10 if score @s home_10_x = @s home_10_x store success score <home_exists> variable run function pandamium:home/load/load_10
execute unless score <cannot_go> variable matches 1 store success score <cannot_go> variable if score <home_exists> variable matches 0 run tellraw @s [{"text":"[Home]","color":"dark_red"},[{"text":" You have not set Home ","color":"red"},{"score":{"name":"@s","objective":"home"}}," yet!"]]

# Restrictions
execute unless score <cannot_go> variable matches 1 store success score <cannot_go> variable unless score @s gameplay_perms matches 6.. if score <tp_x> variable matches -166..-37 if score <tp_y> variable matches -52..-2 if score <tp_z> variable matches -110..24 if score <tp_d> variable matches 0 run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" You cannot teleport there!","color":"red"}]
execute unless score <cannot_go> variable matches 1 store success score <cannot_go> variable unless score @s staff_perms matches 1.. unless score <tp_d> variable matches -1..1 run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" You cannot teleport there!","color":"red"}]

# Run
execute if score <cannot_go> variable matches 0 run function pandamium:home/go_run
