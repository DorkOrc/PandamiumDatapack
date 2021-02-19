tag @s add teleport.random.selected_player
execute in pandamium:staff_world run summon minecart 0. 0 0. {Tags:["teleport_marker"]}
execute in pandamium:staff_world as @e[type=minecart,tag=teleport_marker,x=0,y=0,z=0,distance=0] in overworld run function pandamium:misc/teleport/random/teleport_marker
tag @s remove teleport.random.selected_player
