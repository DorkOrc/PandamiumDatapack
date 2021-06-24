tag @s add running_trigger
execute if score @s staff_perms matches 2.. as @a if score @s id = @p[tag=running_trigger] selected_player run tag @s add selected_player

scoreboard players set <can_run> variable 0
execute if score @s staff_perms matches 2.. if entity @p[tag=selected_player] run scoreboard players set <can_run> variable 1

scoreboard players set <can_tp> variable 0
execute if score <can_run> variable matches 1 if score @s homes matches -1 as @p[tag=selected_player] if score @s home_1_x = @s home_1_x run function pandamium:home/load/load_1
execute if score <can_run> variable matches 1 if score @s homes matches -2 as @p[tag=selected_player] if score @s home_2_x = @s home_2_x run function pandamium:home/load/load_2
execute if score <can_run> variable matches 1 if score @s homes matches -3 as @p[tag=selected_player] if score @s home_3_x = @s home_3_x run function pandamium:home/load/load_3
execute if score <can_run> variable matches 1 if score @s homes matches -4 as @p[tag=selected_player] if score @s home_4_x = @s home_4_x run function pandamium:home/load/load_4
execute if score <can_run> variable matches 1 if score @s homes matches -5 as @p[tag=selected_player] if score @s home_5_x = @s home_5_x run function pandamium:home/load/load_5
execute if score <can_run> variable matches 1 if score @s homes matches -6 as @p[tag=selected_player] if score @s home_6_x = @s home_6_x run function pandamium:home/load/load_6
execute if score <can_run> variable matches 1 if score @s homes matches -7 as @p[tag=selected_player] if score @s home_7_x = @s home_7_x run function pandamium:home/load/load_7
execute if score <can_run> variable matches 1 if score @s homes matches -8 as @p[tag=selected_player] if score @s home_8_x = @s home_8_x run function pandamium:home/load/load_8
execute if score <can_run> variable matches 1 if score @s homes matches -9 as @p[tag=selected_player] if score @s home_9_x = @s home_9_x run function pandamium:home/load/load_9
execute if score <can_run> variable matches 1 if score @s homes matches -10 as @p[tag=selected_player] if score @s home_10_x = @s home_10_x run function pandamium:home/load/load_10

execute if score <can_run> variable matches 1 if score <can_tp> variable matches 0 run tellraw @s [{"text":"[Homes] ","color":"dark_red"},{"selector":"@p[tag=selected_player]","color":"red"},{"text":" has not set this home yet!","color":"red"}]

execute if score <can_run> variable matches 1 if score <can_tp> variable matches 1 run gamemode spectator
execute if score <can_run> variable matches 1 if score <can_tp> variable matches 1 run function pandamium:misc/teleport/to_scores/main

execute if score <can_run> variable matches 1 if score <can_tp> variable matches 1 run scoreboard players set <home_number> variable 0
execute if score <can_run> variable matches 1 if score <can_tp> variable matches 1 run scoreboard players operation <home_number> variable -= @s homes
execute if score <can_run> variable matches 1 if score <can_tp> variable matches 1 run tellraw @s [{"text":"","color":"yellow"},{"text":"[Homes]","color":"gold"}," Teleported to ",[{"selector":"@p[tag=selected_player]"},"'s"],[{"text":" Home ","color":"gold","bold":true},{"score":{"name":"<home_number>","objective":"variable"}}]," in ",{"text":"spectator mode","color":"gold","bold":true},"!"]

execute if score @s staff_perms matches 2.. unless entity @p[tag=selected_player] run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" You have not selected a player or the player you have selected is offline!","color":"red"}]

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s homes
scoreboard players enable @s homes
