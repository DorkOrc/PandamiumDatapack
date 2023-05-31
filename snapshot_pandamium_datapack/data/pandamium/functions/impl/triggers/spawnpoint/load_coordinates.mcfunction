scoreboard players operation <tp_x> variable = @s spawnpoint_x
scoreboard players operation <tp_y> variable = @s spawnpoint_y
scoreboard players operation <tp_z> variable = @s spawnpoint_z
execute store result score <dimension> variable run scoreboard players operation <tp_d> variable = @s spawnpoint_d
function pandamium:utils/get/dimension_name/from_score
scoreboard players set <spawnpoint_exists> variable 1
