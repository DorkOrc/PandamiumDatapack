execute if score @s parkour_checkpoint matches 0.. unless predicate pandamium:is_riding_entity run function pandamium:misc/map_specific/parkour/run/checkpoint_pressure_plate

tag @s add parkour.running_function
execute unless score @s parkour_checkpoint matches 0.. if predicate pandamium:in_spawn unless predicate pandamium:is_riding_entity if entity @p[tag=parkour.running_function,x=-46,y=142,z=-90,dx=2,dy=0,dz=2,gamemode=!spectator,gamemode=!creative] run function pandamium:misc/map_specific/parkour/start_parkour
tag @s remove parkour.running_function

advancement revoke @s only pandamium:parkour/checkpoint_pressure_plate
