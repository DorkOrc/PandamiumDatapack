execute if score @s jailed matches 1.. run return run tellraw @s [{text:"[Parkour]",color:"dark_red"},{text:" You cannot use this trigger in jail!",color:"red"}]

execute if score @s parkour matches 1.. if score @s parkour.checkpoint matches 0.. run return run function pandamium:triggers/parkour/print_actions_menu
execute if score @s parkour matches 1.. run return run function pandamium:triggers/parkour/print_courses_menu

execute if score @s parkour matches -1 if score @s parkour.checkpoint matches 0.. run return run function pandamium:impl/parkour/actions/return_to_last_checkpoint

execute if score @s parkour matches -103 in overworld positioned -292.5 126.00 150.75 rotated 180 16 run return run function pandamium:utils/teleport/here/from_source {source:"parkour course_3 tp_to_start"}
execute if score @s parkour matches -104 in overworld positioned -300.5 136 197.0 rotated 0 0 run return run function pandamium:utils/teleport/here/from_source {source:"parkour course_4 tp_to_start"}

# else
tellraw @s [{text:"[Parkour]",color:"dark_red"},{text:" That is not a valid option",color:"red"}]
