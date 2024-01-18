# arguments: username, id

$execute store success score <target_is_online> variable if entity $(username)
function pandamium:utils/get/display_name/from_id with storage pandamium:templates macro.id

$execute unless score $(username) spawnpoint_x = $(username) spawnpoint_x run return run tellraw @s [{"text":"[Spawnpoint]","color":"dark_red"},[{"text":" ","color":"red"},{"storage":"pandamium:temp","nbt":"display_name","interpret":true}," has no known last spawnpoint!"]]

$execute store result score <tp_x> variable store result score <dx> variable run scoreboard players get $(username) spawnpoint_x
$execute store result score <tp_y> variable store result score <dy> variable run scoreboard players get $(username) spawnpoint_y
$execute store result score <tp_z> variable store result score <dz> variable run scoreboard players get $(username) spawnpoint_z
$execute store result score <tp_d> variable run scoreboard players get $(username) spawnpoint_d

execute if score <do_teleport> variable matches 1 run gamemode spectator @s
$execute if score <do_teleport> variable matches 1 run function pandamium:utils/teleport/to_scores/from_source {source: "spawnpoint teleport_to_target_spawnpoint $(username)"}
execute if score <do_teleport> variable matches 1 run return run tellraw @s [{"text":"[Spawnpoint]","color":"dark_green"},[{"text":" Teleported to ","color":"green"},[{"text":"","color":"aqua"},{"storage":"pandamium:temp","nbt":"display_name","interpret":true}],"'s last spawnpoint (in spectator mode)!"]]

execute store result score <origin_dimension> variable run function pandamium:utils/get/dimension_id

function pandamium:utils/get/position
scoreboard players operation <dx> variable -= <x> variable
scoreboard players operation <dy> variable -= <y> variable
scoreboard players operation <dz> variable -= <z> variable
execute if score <origin_dimension> variable = <tp_d> variable run function pandamium:utils/get/distance/from_scores

function pandamium:utils/get/dimension_name/from_position

$execute if score <origin_dimension> variable = <tp_d> variable run tellraw @s [{"text":"[Spawnpoint]","color":"dark_green"},[{"text":" ","color":"green"},[{"text":"","color":"aqua"},{"storage":"pandamium:temp","nbt":"display_name","interpret":true}],"'s last spawnpoint is at ",[{"score":{"name":"<tp_x>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<tp_y>","objective":"variable"}}," ",{"score":{"name":"<tp_z>","objective":"variable"}}," in ",{"storage":"pandamium:temp","nbt":"dimension_name"}]," (",{"score":{"name":"<distance>","objective":"variable"}},"m away)! "],{"text":"[→]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to teleport to ","color":"blue"},{"storage":"pandamium:temp","nbt":"display_name","interpret":true},"'s last spawnpoint"]},"clickEvent":{"action":"run_command","value":"/trigger spawnpoint set -$(id)"}}]
$execute unless score <origin_dimension> variable = <tp_d> variable run tellraw @s [{"text":"[Spawnpoint]","color":"dark_green"},[{"text":" ","color":"green"},[{"text":"","color":"aqua"},{"storage":"pandamium:temp","nbt":"display_name","interpret":true}],"'s last spawnpoint is at ",[{"score":{"name":"<tp_x>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<tp_y>","objective":"variable"}}," ",{"score":{"name":"<tp_z>","objective":"variable"}}," in ",{"storage":"pandamium:temp","nbt":"dimension_name"}],"! "],{"text":"[→]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to teleport to ","color":"blue"},{"storage":"pandamium:temp","nbt":"display_name","interpret":true},"'s last spawnpoint"]},"clickEvent":{"action":"run_command","value":"/trigger spawnpoint set -$(id)"}}]
