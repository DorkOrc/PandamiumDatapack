#a minecart contains not much nbt data, so it should be efficient to modify its Pos
tag @s add selected_player
summon minecart ~ 0 ~ {Tags:["teleport_marker"]}
execute as @e[type=minecart,distance=0,tag=teleport_marker,y=0] run function pandamium:misc/teleport/to_scores/select_dimension
tag @s remove selected_player
