# print log
execute if score @s auto_jails matches 1.. run function pandamium:misc/jail/print_auto_jail_log
execute if score @s auto_jails matches 1.. run scoreboard players set <unread_auto_jails> global 0

# teleport to pre-jail location
data remove storage pandamium:jail selected_entry

execute if score @s auto_jails matches -1 run data modify storage pandamium:jail selected_entry set from storage pandamium:jail auto_jails[{index:1}]
execute if score @s auto_jails matches -2 run data modify storage pandamium:jail selected_entry set from storage pandamium:jail auto_jails[{index:2}]
execute if score @s auto_jails matches -3 run data modify storage pandamium:jail selected_entry set from storage pandamium:jail auto_jails[{index:3}]
execute if score @s auto_jails matches -4 run data modify storage pandamium:jail selected_entry set from storage pandamium:jail auto_jails[{index:4}]
execute if score @s auto_jails matches -5 run data modify storage pandamium:jail selected_entry set from storage pandamium:jail auto_jails[{index:5}]
execute if score @s auto_jails matches -6 run data modify storage pandamium:jail selected_entry set from storage pandamium:jail auto_jails[{index:6}]
execute if score @s auto_jails matches -7 run data modify storage pandamium:jail selected_entry set from storage pandamium:jail auto_jails[{index:7}]
execute if score @s auto_jails matches -8 run data modify storage pandamium:jail selected_entry set from storage pandamium:jail auto_jails[{index:8}]
execute if score @s auto_jails matches -9 run data modify storage pandamium:jail selected_entry set from storage pandamium:jail auto_jails[{index:9}]
execute if score @s auto_jails matches -10 run data modify storage pandamium:jail selected_entry set from storage pandamium:jail auto_jails[{index:10}]
execute if score @s auto_jails matches -11 run data modify storage pandamium:jail selected_entry set from storage pandamium:jail auto_jails[{index:11}]
execute if score @s auto_jails matches -12 run data modify storage pandamium:jail selected_entry set from storage pandamium:jail auto_jails[{index:12}]
execute if score @s auto_jails matches -13 run data modify storage pandamium:jail selected_entry set from storage pandamium:jail auto_jails[{index:13}]
execute if score @s auto_jails matches -14 run data modify storage pandamium:jail selected_entry set from storage pandamium:jail auto_jails[{index:14}]
execute if score @s auto_jails matches -15 run data modify storage pandamium:jail selected_entry set from storage pandamium:jail auto_jails[{index:15}]
execute if score @s auto_jails matches -16 run data modify storage pandamium:jail selected_entry set from storage pandamium:jail auto_jails[{index:16}]
execute if score @s auto_jails matches -17 run data modify storage pandamium:jail selected_entry set from storage pandamium:jail auto_jails[{index:17}]
execute if score @s auto_jails matches -18 run data modify storage pandamium:jail selected_entry set from storage pandamium:jail auto_jails[{index:18}]
execute if score @s auto_jails matches -19 run data modify storage pandamium:jail selected_entry set from storage pandamium:jail auto_jails[{index:19}]
execute if score @s auto_jails matches -20 run data modify storage pandamium:jail selected_entry set from storage pandamium:jail auto_jails[{index:20}]

execute store success score <can_run> variable if data storage pandamium:jail selected_entry 
execute unless score @s staff_perms matches 2.. run scoreboard players set <can_run> variable 0

execute if score <can_run> variable matches 1 store result score <tp_x> variable run data get storage pandamium:jail selected_entry.pre_jail_pos[0]
execute if score <can_run> variable matches 1 store result score <tp_y> variable run data get storage pandamium:jail selected_entry.pre_jail_pos[1]
execute if score <can_run> variable matches 1 store result score <tp_z> variable run data get storage pandamium:jail selected_entry.pre_jail_pos[2]
execute if score <can_run> variable matches 1 store result score <tp_d> variable run data get storage pandamium:jail selected_entry.pre_jail_pos[3]
execute if score <can_run> variable matches 1 run gamemode spectator
execute if score <can_run> variable matches 1 run function pandamium:misc/teleport/to_scores/main
execute if score <can_run> variable matches 1 run tellraw @s [{"text":"[Auto-Jails]","color":"gold"},[{"text":" Teleported to ","color":"yellow"},[{"nbt":"selected_entry.username","storage":"pandamium:jail","color":"gold"},"'s"]," ",{"text":"Pre-Jail Location","bold":true,"color":"gold"}," in ",{"text":"spectator mode","bold":true,"color":"gold"},"!"]]

execute if score <can_run> variable matches 0 if score @s auto_jails matches ..-1 run tellraw @s [{"text":"[Auto-Jails]","color":"dark_red"},{"text":" This is not a valid option!","color":"green"}]

scoreboard players reset @s auto_jails
scoreboard players enable @s auto_jails
