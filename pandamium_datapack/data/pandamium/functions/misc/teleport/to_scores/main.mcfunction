#due to a MC bug with detecting hitboxes with 0 size, cannot target a marker entity with [distance=0]
tag @s add teleport.to_scores.selected_player
execute in pandamium:staff_world run summon marker 0. 0 0. {Tags:["teleport_marker"]}
execute in pandamium:staff_world as @e[type=marker,tag=teleport_marker,x=0,y=0,z=0,distance=0.1] run function pandamium:misc/teleport/to_scores/select_dimension
tag @s remove teleport.to_scores.selected_player
