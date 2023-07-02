data modify storage pandamium:temp location_tag set value "elevator.location.maproom"

execute as @e[tag=elevator.location.maproom,tag=elevator.engine] run function pandamium:impl/map_specific/elevator/start
kill @e[tag=elevator.location.maproom]
execute positioned -312 111 122 run function pandamium:impl/map_specific/elevator/create/main

fill -312 148 122 -312 117 122 chain
