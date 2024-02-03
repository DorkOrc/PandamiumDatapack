# arguments: username

$execute store success score <target_is_online> variable if entity $(username)
function pandamium:utils/get/display_name/from_id with storage pandamium:templates macro.id

# target is online
execute if score <target_is_online> variable matches 1 run gamemode spectator @s
$execute if score <target_is_online> variable matches 1 at $(username) run function pandamium:utils/teleport/here/from_source {source: "tp teleport_to_target $(username)"}
$execute if score <target_is_online> variable matches 1 if score <do_spectate> variable matches 1 run spectate $(username) @s
execute if score <target_is_online> variable matches 1 run return run tellraw @s [{"text":"[TP]","color":"dark_green"},[{"text":" Teleported to ","color":"green"},[{"text":"","color":"aqua"},{"storage":"pandamium:temp","nbt":"display_name","interpret":true}]," (in spectator mode)!"]]

# target is offline
$execute unless score $(username) last_position.x = $(username) last_position.x run return run tellraw @s [{"text":"[TP]","color":"dark_red"},[{"text":" ","color":"red"},{"storage":"pandamium:temp","nbt":"display_name","interpret":true}," has no known last position!"]]

$execute store result score <tp_x> variable run scoreboard players get $(username) last_position.x
$execute store result score <tp_y> variable run scoreboard players get $(username) last_position.y
$execute store result score <tp_z> variable run scoreboard players get $(username) last_position.z
$execute store result score <tp_d> variable run scoreboard players get $(username) last_position.d

gamemode spectator @s
$function pandamium:utils/teleport/to_scores/from_source {source: "tp teleport_to_target_last_position $(username)"}
tellraw @s [{"text":"[TP]","color":"dark_green"},[{"text":" Teleported to ","color":"green"},[{"text":"","color":"aqua"},{"storage":"pandamium:temp","nbt":"display_name","interpret":true}],"'s last position (in spectator mode)!"]]
