# arguments: username

function pandamium:utils/get/display_name/from_id with storage pandamium:templates macro.id

$execute unless score $(username) pre_jail_pos_x = $(username) pre_jail_pos_x run return run tellraw @s [{text:"[TP Pre-Jail]",color:"dark_red"},{text:" ",color:"red",extra:[{storage:"pandamium:temp",nbt:"display_name",interpret:true}," has no known pre-jail position!"]}]

$execute store result score <tp_x> variable run scoreboard players get $(username) pre_jail_pos_x
$execute store result score <tp_y> variable run scoreboard players get $(username) pre_jail_pos_y
$execute store result score <tp_z> variable run scoreboard players get $(username) pre_jail_pos_z
$execute store result score <tp_d> variable run scoreboard players get $(username) pre_jail_pos_d

gamemode spectator @s
$function pandamium:utils/teleport/to_scores/from_source {source: "pre_jail_tp $(username)"}
tellraw @s [{text:"[TP]",color:"dark_green"},{text:" Teleported to ",color:"green",extra:[{text:"",color:"aqua",extra:[{storage:"pandamium:temp",nbt:"display_name",interpret:true}]},"'s pre-jail position (in spectator mode)!"]}]
