advancement revoke @s only pandamium:detect/land_from_jump
scoreboard players reset @s detect.jumped_before_landing

execute unless score @s parkour.checkpoint matches 300..399 run return 0

scoreboard players operation <id> variable = @s id
execute positioned ~ ~100 ~ as @e[type=area_effect_cloud,tag=jump_origin_tracker,distance=..1.5,limit=1] if score @s temp_1 = <id> variable run return 0

function pandamium:utils/database/players/load/self
execute store result storage pandamium.db.players:io selected.entry.data.parkour.course_4.jumps int 1 run scoreboard players add @s parkour_4.jumps 1
function pandamium:utils/database/players/save

execute if score @s parkour_4.jumps matches 500.. run advancement grant @s only pandamium:pandamium/parkour/course_4/jump_goal jump_goal
