tag @s add sit
execute positioned as @s positioned ~ ~-0.495 ~ rotated as @s summon area_effect_cloud run function pandamium:misc/sit/as_seat_entity
tag @s remove sit

scoreboard players set @s detect.sneak_to_sit_time -1073741824
