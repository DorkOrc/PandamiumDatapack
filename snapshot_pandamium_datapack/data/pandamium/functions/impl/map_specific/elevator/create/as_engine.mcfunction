data modify entity @s Tags append from storage pandamium:temp location_tag
data modify entity @s Tags append from storage pandamium:temp state_tag

tag @s add elevator
tag @s add elevator.engine
tag @s add elevator.engine_new

data merge entity @s {NoGravity:1b,Item:{id:"minecraft:spruce_pressure_plate",Count:1b}}

execute positioned ~ ~0.1875 ~ summon item_display run function pandamium:impl/map_specific/elevator/create/as_base

function pandamium:impl/map_specific/elevator/stop

tag @s remove elevator.engine_new
