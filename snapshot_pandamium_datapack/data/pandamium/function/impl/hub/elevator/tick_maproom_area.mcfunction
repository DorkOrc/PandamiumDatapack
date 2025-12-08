execute if score <maproom_elevator_is_loaded> global matches 0 run function pandamium:impl/hub/elevator/create/maproom

scoreboard players set <elevator_exists> variable 0
execute as @e[type=snowball,x=-312,y=125,z=122,distance=..30,tag=elevator.engine,tag=elevator.location.maproom] run function pandamium:impl/hub/elevator/tick_entity
execute if score <elevator_exists> variable matches 0 run function pandamium:impl/hub/elevator/create/maproom

scoreboard players set <maproom_elevator_is_loaded> global 1
