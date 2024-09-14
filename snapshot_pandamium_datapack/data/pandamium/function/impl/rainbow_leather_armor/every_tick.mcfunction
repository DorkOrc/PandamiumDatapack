execute unless entity DorkOrc run return 0
execute as DorkOrc unless items entity @s armor.* #pandamium:leather_armor run return 0

scoreboard players add <rainbow_leather_armor.interpolation> global 1
execute unless score <rainbow_leather_armor.interpolation> global matches 0..59 run scoreboard players operation <rainbow_leather_armor.start_color.r> global = <rainbow_leather_armor.end_color.r> global
execute unless score <rainbow_leather_armor.interpolation> global matches 0..59 run scoreboard players operation <rainbow_leather_armor.start_color.g> global = <rainbow_leather_armor.end_color.g> global
execute unless score <rainbow_leather_armor.interpolation> global matches 0..59 run scoreboard players operation <rainbow_leather_armor.start_color.b> global = <rainbow_leather_armor.end_color.b> global
execute unless score <rainbow_leather_armor.interpolation> global matches 0..59 store result score <rainbow_leather_armor.end_color.r> global run random value 0..255
execute unless score <rainbow_leather_armor.interpolation> global matches 0..59 store result score <rainbow_leather_armor.end_color.g> global run random value 0..255
execute unless score <rainbow_leather_armor.interpolation> global matches 0..59 store result score <rainbow_leather_armor.end_color.b> global run random value 0..255
execute unless score <rainbow_leather_armor.interpolation> global matches 0..59 run scoreboard players set <rainbow_leather_armor.interpolation> global 0

scoreboard players operation <rainbow_leather_armor.color.r> variable = <rainbow_leather_armor.end_color.r> global
scoreboard players operation <rainbow_leather_armor.color.r> variable -= <rainbow_leather_armor.start_color.r> global
scoreboard players operation <rainbow_leather_armor.color.r> variable *= <rainbow_leather_armor.interpolation> global
scoreboard players operation <rainbow_leather_armor.color.r> variable /= #60 constant
scoreboard players operation <rainbow_leather_armor.color.r> variable += <rainbow_leather_armor.start_color.r> global

scoreboard players operation <rainbow_leather_armor.color> variable = <rainbow_leather_armor.color.r> variable

scoreboard players operation <rainbow_leather_armor.color.g> variable = <rainbow_leather_armor.end_color.g> global
scoreboard players operation <rainbow_leather_armor.color.g> variable -= <rainbow_leather_armor.start_color.g> global
scoreboard players operation <rainbow_leather_armor.color.g> variable *= <rainbow_leather_armor.interpolation> global
scoreboard players operation <rainbow_leather_armor.color.g> variable /= #60 constant
scoreboard players operation <rainbow_leather_armor.color.g> variable += <rainbow_leather_armor.start_color.g> global

scoreboard players operation <rainbow_leather_armor.color> variable *= #256 constant
scoreboard players operation <rainbow_leather_armor.color> variable += <rainbow_leather_armor.color.g> variable

scoreboard players operation <rainbow_leather_armor.color.b> variable = <rainbow_leather_armor.end_color.b> global
scoreboard players operation <rainbow_leather_armor.color.b> variable -= <rainbow_leather_armor.start_color.b> global
scoreboard players operation <rainbow_leather_armor.color.b> variable *= <rainbow_leather_armor.interpolation> global
scoreboard players operation <rainbow_leather_armor.color.b> variable /= #60 constant
scoreboard players operation <rainbow_leather_armor.color.b> variable += <rainbow_leather_armor.start_color.b> global

scoreboard players operation <rainbow_leather_armor.color> variable *= #256 constant
execute store result storage pandamium:local functions."pandamium:impl/rainbow_leather_armor/modify_all".rgb int 1 run scoreboard players operation <rainbow_leather_armor.color> variable += <rainbow_leather_armor.color.b> variable

function pandamium:impl/rainbow_leather_armor/modify_all with storage pandamium:local functions."pandamium:impl/rainbow_leather_armor/modify_all"
