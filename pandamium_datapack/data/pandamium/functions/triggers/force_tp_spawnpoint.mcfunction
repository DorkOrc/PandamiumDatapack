tag @s add running_trigger

execute if score @s staff_perms matches 2.. if score @s spawnpoint matches ..-2 run scoreboard players set <selected_player> temp 0
execute if score @s staff_perms matches 2.. if score @s spawnpoint matches ..-2 run scoreboard players operation <selected_player> temp -= @s spawnpoint
execute if score @s staff_perms matches 2.. if score @s spawnpoint matches ..-2 as @a if score @s id = <selected_player> temp run tag @s add selected_player
execute if score @s staff_perms matches 2.. unless entity @p[tag=selected_player] as @a if score @s id = @p[tag=running_trigger] selected_player run tag @s add selected_player

scoreboard players set <can_run> temp 0
execute if score @s staff_perms matches 2.. if entity @p[tag=selected_player] run scoreboard players set <can_run> temp 1

execute if score <can_run> temp matches 1 as @p[tag=selected_player] store success score <can_tp> temp if score @s spawnpoint_x = @s spawnpoint_x
execute if score <can_run> temp matches 1 if score <can_tp> temp matches 1 run scoreboard players operation <tp_x> temp = @p[tag=selected_player] spawnpoint_x
execute if score <can_run> temp matches 1 if score <can_tp> temp matches 1 run scoreboard players operation <tp_y> temp = @p[tag=selected_player] spawnpoint_y
execute if score <can_run> temp matches 1 if score <can_tp> temp matches 1 run scoreboard players operation <tp_z> temp = @p[tag=selected_player] spawnpoint_z
execute if score <can_run> temp matches 1 if score <can_tp> temp matches 1 run scoreboard players operation <tp_d> temp = @p[tag=selected_player] spawnpoint_dim

execute if score <can_run> temp matches 1 if score <can_tp> temp matches 1 run gamemode spectator
execute if score <can_run> temp matches 1 if score <can_tp> temp matches 1 run function pandamium:misc/teleport/to_scores/main

execute if score <can_run> temp matches 1 if score <can_tp> temp matches 1 run tellraw @s [{"text":"","color":"yellow"},{"text":"[Spawnpoint]","color":"gold"}," Teleported to ",[{"selector":"@p[tag=selected_player]"},"'s"],{"text":" Spawnpoint","color":"gold","bold":true}," in ",{"text":"spectator mode","color":"gold","bold":true},"!"]
execute if score <can_run> temp matches 1 if score <can_tp> temp matches 0 run tellraw @s [{"text":"[Spawnpoint] ","color":"dark_red"},{"selector":"@p[tag=selected_player]","color":"red"},{"text":" has not set a spawnpoint yet!","color":"red"}]

execute if score @s staff_perms matches 2.. unless entity @p[tag=selected_player] run tellraw @s [{"text":"[Spawnpoint]","color":"dark_red"},{"text":" You have not selected a player or the player you have selected is offline!","color":"red"}]

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s spawnpoint
scoreboard players enable @s spawnpoint
