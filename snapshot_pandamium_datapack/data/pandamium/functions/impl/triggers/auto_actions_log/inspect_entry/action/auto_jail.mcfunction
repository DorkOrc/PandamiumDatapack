execute store result score <tp_x> variable run data get storage pandamium:auto_actions selected_entry.pre_jail_pos[0]
execute store result score <tp_y> variable run data get storage pandamium:auto_actions selected_entry.pre_jail_pos[1]
execute store result score <tp_z> variable run data get storage pandamium:auto_actions selected_entry.pre_jail_pos[2]
execute store result score <tp_d> variable run data get storage pandamium:auto_actions selected_entry.pre_jail_pos[3]
gamemode spectator
function pandamium:misc/teleport/to_scores
execute store success score <returned> variable run tellraw @s [{"text":"[Auto-Actions]","color":"gold"},[{"text":" Teleported to ","color":"yellow"},{"nbt":"selected_entry.username","storage":"pandamium:auto_actions"},"'s ",{"text":"Pre-Jail Location","bold":true}," in spectator mode!"]]
