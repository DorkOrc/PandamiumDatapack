tag @e[type=snowball,tag=elevator.engine,tag=elevator.location.maproom] remove elevator.state.0
tag @e[type=snowball,tag=elevator.engine,tag=elevator.location.maproom] add elevator.state.1
execute as @e[type=snowball,tag=elevator.engine,tag=elevator.location.maproom] unless entity @s[x=-311.5,y=143.8125,z=122.5,distance=..1,tag=!elevator.is_moving] at @s run function pandamium:impl/map_specific/elevator/move_up
