tag @s add sit
execute at @s positioned ~ ~-1000 ~ summon interaction positioned ~ ~1000 ~ run function pandamium:impl/sit/as_seat_entity
tag @s remove sit

scoreboard players set @s sneak_to_sit_timer -1073741824

return 1
