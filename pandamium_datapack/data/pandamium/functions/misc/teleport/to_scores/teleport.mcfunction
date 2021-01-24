data modify storage pandamium:teleport Pos set value [0.,0.,0.]

execute store result storage pandamium:teleport Pos[0] double 1 run scoreboard players get <tp_x> variable
execute store result storage pandamium:teleport Pos[1] double 1 run scoreboard players get <tp_y> variable
execute store result storage pandamium:teleport Pos[2] double 1 run scoreboard players get <tp_z> variable

data modify entity @s Pos set from storage pandamium:teleport Pos
data remove storage pandamium:teleport Pos

#only needs to run if the player stays in the same dimension
execute as @a[tag=selected_player,x=0] run function pandamium:misc/teleport/anti_tp_exploit

execute positioned as @s run tp @a[tag=selected_player] ~0.5 ~ ~0.5
