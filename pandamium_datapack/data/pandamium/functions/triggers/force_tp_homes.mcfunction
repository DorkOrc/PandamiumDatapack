tag @s add running_trigger
scoreboard players set <returned> variable 0

execute if score <returned> variable matches 0 store success score <returned> variable unless score @s staff_perms matches 2.. run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" You do not have access to that functionality!","color":"red"}]


execute if score <returned> variable matches 0 as @a if score @s id = @p[tag=running_trigger] selected_player run tag @s add selected_player
execute if score <returned> variable matches 0 store success score <returned> variable unless entity @p[tag=selected_player] run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" You have not selected a player or the player you have selected is offline!","color":"red"}]

# Run
scoreboard players set <home_exists> variable 0
execute if score <returned> variable matches 0 if score @s homes matches -1 as @p[tag=selected_player] if score @s home_1_x = @s home_1_x store success score <home_exists> variable run function pandamium:home/load/load_1
execute if score <returned> variable matches 0 if score @s homes matches -2 as @p[tag=selected_player] if score @s home_2_x = @s home_2_x store success score <home_exists> variable run function pandamium:home/load/load_2
execute if score <returned> variable matches 0 if score @s homes matches -3 as @p[tag=selected_player] if score @s home_3_x = @s home_3_x store success score <home_exists> variable run function pandamium:home/load/load_3
execute if score <returned> variable matches 0 if score @s homes matches -4 as @p[tag=selected_player] if score @s home_4_x = @s home_4_x store success score <home_exists> variable run function pandamium:home/load/load_4
execute if score <returned> variable matches 0 if score @s homes matches -5 as @p[tag=selected_player] if score @s home_5_x = @s home_5_x store success score <home_exists> variable run function pandamium:home/load/load_5
execute if score <returned> variable matches 0 if score @s homes matches -6 as @p[tag=selected_player] if score @s home_6_x = @s home_6_x store success score <home_exists> variable run function pandamium:home/load/load_6
execute if score <returned> variable matches 0 if score @s homes matches -7 as @p[tag=selected_player] if score @s home_7_x = @s home_7_x store success score <home_exists> variable run function pandamium:home/load/load_7
execute if score <returned> variable matches 0 if score @s homes matches -8 as @p[tag=selected_player] if score @s home_8_x = @s home_8_x store success score <home_exists> variable run function pandamium:home/load/load_8
execute if score <returned> variable matches 0 if score @s homes matches -9 as @p[tag=selected_player] if score @s home_9_x = @s home_9_x store success score <home_exists> variable run function pandamium:home/load/load_9
execute if score <returned> variable matches 0 if score @s homes matches -10 as @p[tag=selected_player] if score @s home_10_x = @s home_10_x store success score <home_exists> variable run function pandamium:home/load/load_10
execute if score <returned> variable matches 0 store success score <returned> variable if score <home_exists> variable matches 0 run tellraw @s [{"text":"[Homes] ","color":"dark_red"},{"selector":"@p[tag=selected_player]","color":"red"},{"text":" has not set that home yet!","color":"red"}]

execute if score <returned> variable matches 0 run gamemode spectator
execute if score <returned> variable matches 0 run function pandamium:misc/teleport/to_scores/main

execute if score <returned> variable matches 0 run scoreboard players set <home_number> variable 0
execute if score <returned> variable matches 0 run scoreboard players operation <home_number> variable -= @s homes
execute if score <returned> variable matches 0 run tellraw @s [{"text":"","color":"yellow"},{"text":"[Homes]","color":"gold"}," Teleported to ",[{"selector":"@p[tag=selected_player]"},"'s"],[{"text":" Home ","color":"gold","bold":true},{"score":{"name":"<home_number>","objective":"variable"}}]," in spectator mode!"]

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s homes
scoreboard players enable @s homes
