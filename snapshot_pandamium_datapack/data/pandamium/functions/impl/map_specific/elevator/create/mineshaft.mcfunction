data modify storage pandamium:temp location_tag set value "elevator.location.mineshaft"

execute as @e[tag=elevator.location.mineshaft,tag=elevator.engine] run function pandamium:impl/map_specific/elevator/start
kill @e[tag=elevator.location.mineshaft]
execute positioned -196 79 203 run function pandamium:impl/map_specific/elevator/create/main
