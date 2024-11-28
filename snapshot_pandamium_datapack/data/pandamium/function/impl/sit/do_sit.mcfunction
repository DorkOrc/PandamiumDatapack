tag @s add sit
execute positioned ~ ~-1000 ~ summon interaction positioned ~ ~1000 ~ run function pandamium:impl/sit/as_seat_entity
tag @s remove sit

return 1
