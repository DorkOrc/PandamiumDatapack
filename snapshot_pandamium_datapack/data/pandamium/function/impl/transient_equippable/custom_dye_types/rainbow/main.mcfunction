scoreboard players add <custom_dye.interpolation> global 1
execute unless score <custom_dye.interpolation> global matches 0..49 run scoreboard players operation <custom_dye.start_color.r> global = <custom_dye.end_color.r> global
execute unless score <custom_dye.interpolation> global matches 0..49 run scoreboard players operation <custom_dye.start_color.g> global = <custom_dye.end_color.g> global
execute unless score <custom_dye.interpolation> global matches 0..49 run scoreboard players operation <custom_dye.start_color.b> global = <custom_dye.end_color.b> global
execute unless score <custom_dye.interpolation> global matches 0..49 store result score <custom_dye.end_color.r> global run random value 0..255
execute unless score <custom_dye.interpolation> global matches 0..49 store result score <custom_dye.end_color.g> global run random value 0..255
execute unless score <custom_dye.interpolation> global matches 0..49 store result score <custom_dye.end_color.b> global run random value 0..255
execute unless score <custom_dye.interpolation> global matches 0..49 run scoreboard players set <custom_dye.interpolation> global 0

scoreboard players operation <custom_dye.color.r> variable = <custom_dye.end_color.r> global
scoreboard players operation <custom_dye.color.r> variable -= <custom_dye.start_color.r> global
scoreboard players operation <custom_dye.color.r> variable *= <custom_dye.interpolation> global
scoreboard players operation <custom_dye.color.r> variable /= #50 constant
scoreboard players operation <custom_dye.color.r> variable += <custom_dye.start_color.r> global

scoreboard players operation <custom_dye.color> variable = <custom_dye.color.r> variable

scoreboard players operation <custom_dye.color.g> variable = <custom_dye.end_color.g> global
scoreboard players operation <custom_dye.color.g> variable -= <custom_dye.start_color.g> global
scoreboard players operation <custom_dye.color.g> variable *= <custom_dye.interpolation> global
scoreboard players operation <custom_dye.color.g> variable /= #50 constant
scoreboard players operation <custom_dye.color.g> variable += <custom_dye.start_color.g> global

scoreboard players operation <custom_dye.color> variable *= #256 constant
scoreboard players operation <custom_dye.color> variable += <custom_dye.color.g> variable

scoreboard players operation <custom_dye.color.b> variable = <custom_dye.end_color.b> global
scoreboard players operation <custom_dye.color.b> variable -= <custom_dye.start_color.b> global
scoreboard players operation <custom_dye.color.b> variable *= <custom_dye.interpolation> global
scoreboard players operation <custom_dye.color.b> variable /= #50 constant
scoreboard players operation <custom_dye.color.b> variable += <custom_dye.start_color.b> global

scoreboard players operation <custom_dye.color> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:impl/transient_equippable/custom_dye_types/rainbow/main".rgb int 1 run scoreboard players operation <custom_dye.color> variable += <custom_dye.color.b> variable

function pandamium:impl/transient_equippable/custom_dye_types/rainbow/modify with storage pandamium:local functions."pandamium:impl/transient_equippable/custom_dye_types/rainbow/main"
