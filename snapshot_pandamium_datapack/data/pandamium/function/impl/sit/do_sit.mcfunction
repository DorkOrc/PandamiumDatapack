tag @s add sit
execute positioned as @s positioned ~ ~-0.495 ~ rotated as @s summon area_effect_cloud run function pandamium:impl/sit/as_seat_entity
tag @s remove sit

scoreboard players set @s sneak_to_sit_timer -1073741824

return 1
