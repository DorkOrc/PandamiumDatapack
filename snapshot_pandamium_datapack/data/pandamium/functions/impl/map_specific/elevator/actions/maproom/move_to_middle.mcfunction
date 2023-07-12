tag @e[type=snowball,tag=elevator.engine,tag=elevator.location.maproom] remove elevator.state.0
tag @e[type=snowball,tag=elevator.engine,tag=elevator.location.maproom] remove elevator.state.1

execute as @e[type=snowball,tag=elevator.engine,tag=elevator.location.maproom] if entity @s[x=-313.0,y=110,z=121.0,dx=2,dy=14,dz=2] run tag @s add elevator.state.0
execute as @e[type=snowball,tag=elevator.engine,tag=elevator.location.maproom] if entity @s[x=-313.0,y=128,z=121.0,dx=2,dy=20,dz=2] run tag @s add elevator.state.1

execute as @e[type=snowball,tag=elevator.engine,tag=elevator.location.maproom] at @s if entity @s[tag=elevator.state.0] run function pandamium:impl/map_specific/elevator/move_up
execute as @e[type=snowball,tag=elevator.engine,tag=elevator.location.maproom] at @s if entity @s[tag=elevator.state.1] run function pandamium:impl/map_specific/elevator/move_down
