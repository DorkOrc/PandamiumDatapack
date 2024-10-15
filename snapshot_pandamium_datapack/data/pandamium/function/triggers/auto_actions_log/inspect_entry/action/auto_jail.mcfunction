execute unless score @s staff_perms matches 2.. run return run tellraw @s [{"text":"[Auto-Actions Log]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

execute store result score <tp_x> variable run data get storage pandamium:auto_actions selected_entry.pre_jail_pos[0]
execute store result score <tp_y> variable run data get storage pandamium:auto_actions selected_entry.pre_jail_pos[1]
execute store result score <tp_z> variable run data get storage pandamium:auto_actions selected_entry.pre_jail_pos[2]
execute store result score <tp_d> variable run data get storage pandamium:auto_actions selected_entry.pre_jail_pos[3]
gamemode spectator
function pandamium:utils/teleport/to_scores/from_source {source:"auto_jail_log"}
tellraw @s [{"text":"[Auto-Actions Log]","color":"gold"},[{"text":" Teleported to ","color":"yellow"},{"nbt":"selected_entry.username","storage":"pandamium:auto_actions"},"'s ",{"text":"Pre-Jail Location","bold":true}," in spectator mode!"]]
