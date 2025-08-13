data modify storage pandamium:temp position set from entity @s Pos
execute store result score <x> variable run data get storage pandamium:temp position[0]
execute store result score <y> variable run data get storage pandamium:temp position[1]
execute store result score <z> variable run data get storage pandamium:temp position[2]
function pandamium:utils/kill_technical_entity_discretely
