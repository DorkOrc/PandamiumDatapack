tag @e[type=snowball,tag=elevator.engine,tag=elevator.location.maproom] remove elevator.state.0
tag @e[type=snowball,tag=elevator.engine,tag=elevator.location.maproom] remove elevator.state.1
tag @e[type=snowball,tag=elevator.engine,tag=elevator.location.maproom,x=-313.0,y=110,z=121.0,dx=2,dy=14,dz=2] add elevator.state.0
tag @e[type=snowball,tag=elevator.engine,tag=elevator.location.maproom,x=-313.0,y=128,z=121.0,dx=2,dy=20,dz=2] add elevator.state.1

execute as @e[type=snowball,tag=elevator.engine,tag=elevator.location.maproom,tag=elevator.state.0] unless entity @s[x=-311.5,y=126.8125,z=122.5,distance=..1,tag=!elevator.is_moving] at @s run function pandamium:impl/map_specific/elevator/move_up
execute as @e[type=snowball,tag=elevator.engine,tag=elevator.location.maproom,tag=elevator.state.1] unless entity @s[x=-311.5,y=126.8125,z=122.5,distance=..1,tag=!elevator.is_moving] at @s run function pandamium:impl/map_specific/elevator/move_down
