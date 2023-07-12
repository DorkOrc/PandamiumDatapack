tag @e[type=snowball,tag=elevator.engine,tag=elevator.location.maproom] add elevator.state.0
tag @e[type=snowball,tag=elevator.engine,tag=elevator.location.maproom] remove elevator.state.1
execute as @e[type=snowball,tag=elevator.engine,tag=elevator.location.maproom] at @s run function pandamium:impl/map_specific/elevator/move_down
