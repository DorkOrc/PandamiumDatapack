tag @s add selected_player
execute in pandamium:staff_world run summon area_effect_cloud 0. 0 0. {Tags:["teleport_marker"]}
execute in pandamium:staff_world as @e[type=area_effect_cloud,tag=teleport_marker,x=0,y=0,z=0,distance=..0.1] in overworld run function pandamium:misc/teleport/random/teleport_marker
tag @s remove selected_player
