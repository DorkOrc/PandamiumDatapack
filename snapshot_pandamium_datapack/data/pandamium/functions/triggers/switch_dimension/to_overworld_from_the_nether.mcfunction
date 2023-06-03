execute in overworld run function pandamium:utils/get/position

scoreboard players operation <tp_x> variable = <x> variable
scoreboard players operation <y> variable *= #3 constant
execute store result score <tp_y> variable run scoreboard players remove <y> variable 64
scoreboard players operation <tp_z> variable = <z> variable
scoreboard players set <tp_d> variable 0

function pandamium:utils/teleport/to_scores
