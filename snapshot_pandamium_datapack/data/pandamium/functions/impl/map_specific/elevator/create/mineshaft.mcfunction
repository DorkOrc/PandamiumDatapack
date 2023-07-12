data modify storage pandamium:temp location_tag set value "elevator.location.mineshaft"
data modify storage pandamium:temp state_tag set value "elevator.state.0"

execute as @e[tag=elevator.location.mineshaft,tag=elevator.engine] run function pandamium:impl/map_specific/elevator/start
kill @e[tag=elevator.location.mineshaft]
execute positioned -196 121 203 run function pandamium:impl/map_specific/elevator/create/main

fill -196 119 203 -196 77 203 chain
