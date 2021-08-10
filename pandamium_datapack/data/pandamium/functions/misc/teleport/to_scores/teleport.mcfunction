data modify storage pandamium:teleport Pos set value [0.,0.,0.]

execute store result storage pandamium:teleport Pos[0] double 1 run scoreboard players get <tp_x> temp
execute store result storage pandamium:teleport Pos[1] double 1 run scoreboard players get <tp_y> temp
execute store result storage pandamium:teleport Pos[2] double 1 run scoreboard players get <tp_z> temp

data modify entity @s Pos set from storage pandamium:teleport Pos
data remove storage pandamium:teleport Pos

execute positioned as @s positioned ~0.5 ~ ~0.5 as @a[tag=teleport.to_scores.selected_player] rotated as @s run function pandamium:misc/teleport/main
