#anti_tp_exploit also adds xp, but in this case doesn't run if the player changes dimensions
xp add @s 0

#a minecart contains not much nbt data, so it should be efficient to modify its Pos
tag @s add selected_player
summon minecart ~ ~ ~ {Tags:["teleport_marker"]}
execute as @e[type=minecart,distance=0,tag=teleport_marker] run function pandamium:misc/teleport/select_dimension
tag @s remove selected_player
