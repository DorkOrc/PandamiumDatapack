execute if score @s parkour.checkpoint matches 300..399 run scoreboard players operation <id> variable = @s id
execute if score @s parkour.checkpoint matches 300..399 positioned ~ ~100 ~ summon area_effect_cloud run function pandamium:detect/jump/create_jump_origin_tracker

scoreboard players reset @s detect.jump
advancement revoke @s only pandamium:detect/jump
