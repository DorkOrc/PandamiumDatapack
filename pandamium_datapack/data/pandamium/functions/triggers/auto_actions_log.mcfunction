# print log
execute if score @s auto_actions_log matches 1.. run function pandamium:misc/auto_actions/print_log
execute if score @s auto_actions_log matches 1.. run scoreboard players set <unread_auto_actions> global 0

# teleport to pre-jail location
data remove storage pandamium:auto_actions selected_entry

execute if score @s auto_actions_log matches -1 run data modify storage pandamium:auto_actions selected_entry set from storage pandamium:auto_actions actions[{id:1b}]
execute if score @s auto_actions_log matches -2 run data modify storage pandamium:auto_actions selected_entry set from storage pandamium:auto_actions actions[{id:2b}]
execute if score @s auto_actions_log matches -3 run data modify storage pandamium:auto_actions selected_entry set from storage pandamium:auto_actions actions[{id:3b}]
execute if score @s auto_actions_log matches -4 run data modify storage pandamium:auto_actions selected_entry set from storage pandamium:auto_actions actions[{id:4b}]
execute if score @s auto_actions_log matches -5 run data modify storage pandamium:auto_actions selected_entry set from storage pandamium:auto_actions actions[{id:5b}]
execute if score @s auto_actions_log matches -6 run data modify storage pandamium:auto_actions selected_entry set from storage pandamium:auto_actions actions[{id:6b}]
execute if score @s auto_actions_log matches -7 run data modify storage pandamium:auto_actions selected_entry set from storage pandamium:auto_actions actions[{id:7b}]
execute if score @s auto_actions_log matches -8 run data modify storage pandamium:auto_actions selected_entry set from storage pandamium:auto_actions actions[{id:8b}]
execute if score @s auto_actions_log matches -9 run data modify storage pandamium:auto_actions selected_entry set from storage pandamium:auto_actions actions[{id:9b}]
execute if score @s auto_actions_log matches -10 run data modify storage pandamium:auto_actions selected_entry set from storage pandamium:auto_actions actions[{id:10b}]
execute if score @s auto_actions_log matches -11 run data modify storage pandamium:auto_actions selected_entry set from storage pandamium:auto_actions actions[{id:11b}]
execute if score @s auto_actions_log matches -12 run data modify storage pandamium:auto_actions selected_entry set from storage pandamium:auto_actions actions[{id:12b}]
execute if score @s auto_actions_log matches -13 run data modify storage pandamium:auto_actions selected_entry set from storage pandamium:auto_actions actions[{id:13b}]
execute if score @s auto_actions_log matches -14 run data modify storage pandamium:auto_actions selected_entry set from storage pandamium:auto_actions actions[{id:14b}]
execute if score @s auto_actions_log matches -15 run data modify storage pandamium:auto_actions selected_entry set from storage pandamium:auto_actions actions[{id:15b}]
execute if score @s auto_actions_log matches -16 run data modify storage pandamium:auto_actions selected_entry set from storage pandamium:auto_actions actions[{id:16b}]
execute if score @s auto_actions_log matches -17 run data modify storage pandamium:auto_actions selected_entry set from storage pandamium:auto_actions actions[{id:17b}]
execute if score @s auto_actions_log matches -18 run data modify storage pandamium:auto_actions selected_entry set from storage pandamium:auto_actions actions[{id:18b}]
execute if score @s auto_actions_log matches -19 run data modify storage pandamium:auto_actions selected_entry set from storage pandamium:auto_actions actions[{id:19b}]
execute if score @s auto_actions_log matches -20 run data modify storage pandamium:auto_actions selected_entry set from storage pandamium:auto_actions actions[{id:20b}]

execute store success score <can_run> variable if data storage pandamium:auto_actions selected_entry 
execute unless score @s staff_perms matches 2.. run scoreboard players set <can_run> variable 0

execute if score <can_run> variable matches 1 store result score <tp_x> variable run data get storage pandamium:auto_actions selected_entry.pre_jail_pos[0]
execute if score <can_run> variable matches 1 store result score <tp_y> variable run data get storage pandamium:auto_actions selected_entry.pre_jail_pos[1]
execute if score <can_run> variable matches 1 store result score <tp_z> variable run data get storage pandamium:auto_actions selected_entry.pre_jail_pos[2]
execute if score <can_run> variable matches 1 store result score <tp_d> variable run data get storage pandamium:auto_actions selected_entry.pre_jail_pos[3]
execute if score <can_run> variable matches 1 run gamemode spectator
execute if score <can_run> variable matches 1 run function pandamium:misc/teleport/to_scores/main
execute if score <can_run> variable matches 1 run tellraw @s [{"text":"[Auto-Jails]","color":"gold"},[{"text":" Teleported to ","color":"yellow"},{"nbt":"selected_entry.username","storage":"pandamium:auto_actions"},"'s ",{"text":"Pre-Jail Location","bold":true}," in spectator mode!"]]

execute if score <can_run> variable matches 0 if score @s auto_actions_log matches ..-1 run tellraw @s [{"text":"[Auto-Jails]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

scoreboard players reset @s auto_actions_log
scoreboard players enable @s auto_actions_log
