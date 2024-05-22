execute in the_nether run function pandamium:utils/get/position

scoreboard players operation <tp_x> variable = <x> variable
scoreboard players add <y> variable 64
execute store result score <tp_y> variable run scoreboard players operation <y> variable /= #3 constant
scoreboard players operation <tp_z> variable = <z> variable
scoreboard players set <tp_d> variable -1

function pandamium:utils/teleport/to_scores
