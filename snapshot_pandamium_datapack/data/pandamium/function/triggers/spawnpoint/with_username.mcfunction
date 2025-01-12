# arguments: username, id

function pandamium:utils/get/display_name/from_id with storage pandamium:templates macro.id

$execute unless score $(username) spawnpoint_x = $(username) spawnpoint_x run return run tellraw @s [{text:"[Spawnpoint]",color:"dark_red"},{text:" ",color:"red",extra:[{storage:"pandamium:temp",nbt:"display_name",interpret:true},{text:" has no known last spawnpoint!"}]}]

$execute store result score <tp_x> variable store result score <dx> variable run scoreboard players get $(username) spawnpoint_x
$execute store result score <tp_y> variable store result score <dy> variable run scoreboard players get $(username) spawnpoint_y
$execute store result score <tp_z> variable store result score <dz> variable run scoreboard players get $(username) spawnpoint_z
$execute store result score <tp_d> variable store result score <dimension> variable run scoreboard players get $(username) spawnpoint_d

execute if score <do_teleport> variable matches 1 if score @s jailed matches 1.. run return run tellraw @s [{text:"[Staff World]",color:"dark_red"},{text:" You may not teleport while in jail!",color:"red"}]
execute if score <do_teleport> variable matches 1 run gamemode spectator @s
$execute if score <do_teleport> variable matches 1 run function pandamium:utils/teleport/to_scores/from_source {source: "spawnpoint teleport_to_target_spawnpoint $(username)"}
execute if score <do_teleport> variable matches 1 run return run tellraw @s [{text:"[Spawnpoint]",color:"dark_green"},{text:" Teleported to ",color:"green",extra:[{text:"",color:"aqua",extra:[{storage:"pandamium:temp",nbt:"display_name",interpret:true}]},{text:"'s last spawnpoint (in spectator mode)!"}]}]

execute store result score <origin_dimension> variable run function pandamium:utils/get/dimension_id

execute if score <origin_dimension> variable = <tp_d> variable run function pandamium:utils/get/position
execute if score <origin_dimension> variable = <tp_d> variable run scoreboard players operation <dx> variable -= <x> variable
execute if score <origin_dimension> variable = <tp_d> variable run scoreboard players operation <dy> variable -= <y> variable
execute if score <origin_dimension> variable = <tp_d> variable run scoreboard players operation <dz> variable -= <z> variable
execute if score <origin_dimension> variable = <tp_d> variable run function pandamium:utils/get/distance/from_scores

function pandamium:utils/get/dimension_name/from_score

$execute if score <origin_dimension> variable = <tp_d> variable run tellraw @s [{text:"[Spawnpoint]",color:"dark_green"},{text:" ",color:"green",extra:[{text:"",color:"aqua",extra:[{storage:"pandamium:temp",nbt:"display_name",interpret:true}]},{text:"'s last spawnpoint is at "},{score:{name:"<tp_x>",objective:"variable"},color:"aqua",extra:[{text:" "},{score:{name:"<tp_y>",objective:"variable"}},{text:" "},{score:{name:"<tp_z>",objective:"variable"}},{text:" in "},{storage:"pandamium:temp",nbt:"dimension_name"}]},{text:" ("},{score:{name:"<distance>",objective:"variable"}},{text:"m away)! "}]},{text:"[→]",color:"blue",hover_event:{action:"show_text",text:[{text:"Click to teleport to ",color:"blue"},{storage:"pandamium:temp",nbt:"display_name",interpret:true},{text:"'s last spawnpoint"}]},click_event:{action:"run_command",command:"trigger spawnpoint set -$(id)"}}]
$execute unless score <origin_dimension> variable = <tp_d> variable run tellraw @s [{text:"[Spawnpoint]",color:"dark_green"},{text:" ",color:"green",extra:[{text:"",color:"aqua",extra:[{storage:"pandamium:temp",nbt:"display_name",interpret:true}]},{text:"'s last spawnpoint is at "},{score:{name:"<tp_x>",objective:"variable"},color:"aqua",extra:[{text:" "},{score:{name:"<tp_y>",objective:"variable"}},{text:" "},{score:{name:"<tp_z>",objective:"variable"}},{text:" in "},{storage:"pandamium:temp",nbt:"dimension_name"}]},{text:"! "}]},{text:"[→]",color:"blue",hover_event:{action:"show_text",text:[{text:"Click to teleport to ",color:"blue"},{storage:"pandamium:temp",nbt:"display_name",interpret:true},{text:"'s last spawnpoint"}]},click_event:{action:"run_command",command:"trigger spawnpoint set -$(id)"}}]
