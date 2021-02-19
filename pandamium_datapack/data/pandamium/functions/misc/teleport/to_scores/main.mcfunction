#a minecart contains not much nbt data, so it should be efficient to modify its Pos
tag @s add teleport.to_scores.selected_player
execute in pandamium:staff_world run summon minecart 0. 0 0. {Tags:["teleport_marker"]}
execute in pandamium:staff_world as @e[type=minecart,tag=teleport_marker,x=0,y=0,z=0,distance=0] run function pandamium:misc/teleport/to_scores/select_dimension
tag @s remove teleport.to_scores.selected_player
