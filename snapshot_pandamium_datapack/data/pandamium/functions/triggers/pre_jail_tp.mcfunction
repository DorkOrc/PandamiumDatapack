tag @s add running_trigger

execute if score @s pre_jail_tp matches 2.. if score @s staff_perms matches 2.. as @a if score @s id = @p[tag=running_trigger] pre_jail_tp run tag @s add selected_player

scoreboard players set <can_run> variable 0
execute if score @s pre_jail_tp matches 2.. if score @s staff_perms matches 2.. if entity @p[tag=selected_player] run scoreboard players set <can_run> variable 1

execute if score @s pre_jail_tp matches 1 run function pandamium:misc/print_nearest_non_staff_player

execute if score <can_run> variable matches 1 as @p[tag=selected_player] store success score <can_tp> variable if score @s pre_jail_pos_x = @s pre_jail_pos_x
execute if score <can_run> variable matches 1 if score <can_tp> variable matches 1 run scoreboard players operation <tp_x> variable = @p[tag=selected_player] pre_jail_pos_x
execute if score <can_run> variable matches 1 if score <can_tp> variable matches 1 run scoreboard players operation <tp_y> variable = @p[tag=selected_player] pre_jail_pos_y
execute if score <can_run> variable matches 1 if score <can_tp> variable matches 1 run scoreboard players operation <tp_z> variable = @p[tag=selected_player] pre_jail_pos_z
execute if score <can_run> variable matches 1 if score <can_tp> variable matches 1 run scoreboard players operation <tp_d> variable = @p[tag=selected_player] pre_jail_pos_d

execute if score <can_run> variable matches 1 if score <can_tp> variable matches 1 run gamemode spectator
execute if score <can_run> variable matches 1 if score <can_tp> variable matches 1 run function pandamium:misc/teleport/to_scores/main

execute if score <can_run> variable matches 1 if score <can_tp> variable matches 1 run tellraw @s [{"text":"","color":"yellow"},{"text":"[TP Pre-Jail]","color":"gold"}," Teleported to ",[{"selector":"@p[tag=selected_player]"},"'s"]," last ",{"text":"Pre-Jail Location","color":"gold","bold":true}," in spectator mode!"]
execute if score <can_run> variable matches 1 if score <can_tp> variable matches 0 run tellraw @s [{"text":"[TP Pre-Jail] ","color":"dark_red"},{"selector":"@p[tag=selected_player]","color":"red"},{"text":" has no pre-jail location stored!","color":"red"}]
execute if score <can_run> variable matches 0 if score @s pre_jail_tp matches 2.. if score @s staff_perms matches 2.. run tellraw @s [{"text":"[TP Pre-Jail]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"pre_jail_tp"}},"!"]]

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s pre_jail_tp
scoreboard players enable @s pre_jail_tp
