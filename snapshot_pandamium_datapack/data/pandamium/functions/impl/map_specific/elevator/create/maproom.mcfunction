data modify storage pandamium:temp location_tag set value "elevator.location.maproom"
data modify storage pandamium:temp state_tag set value "elevator.state.0"

execute as @e[tag=elevator.location.maproom,tag=elevator.engine] run function pandamium:impl/map_specific/elevator/start
kill @e[tag=elevator.location.maproom]
execute positioned -312 110 122 run function pandamium:impl/map_specific/elevator/create/main

fill -312 148 122 -312 117 122 chain
