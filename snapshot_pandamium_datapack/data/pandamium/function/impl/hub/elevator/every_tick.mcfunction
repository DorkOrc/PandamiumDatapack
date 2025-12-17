# reset elevator shafts when loaded
execute if score <previous_spawn_area_ticking_state> global matches 0 run scoreboard players set <mineshaft_elevator_loaded> global 0
execute if loaded -208 0 192 if score <mineshaft_elevator_loaded> global matches 0 run function pandamium:impl/hub/elevator/reset_shaft/mineshaft
execute store success score <mineshaft_elevator_loaded> global if loaded -208 0 192

execute if score <previous_spawn_area_ticking_state> global matches 0 run scoreboard players set <map_room_elevator_loaded> global 0
execute if loaded -320 0 112 if score <map_room_elevator_loaded> global matches 0 run function pandamium:impl/hub/elevator/reset_shaft/map_room
execute store success score <map_room_elevator_loaded> global if loaded -320 0 112

# tick elevators
execute unless loaded -208 0 192 unless loaded -320 0 112 run return 0 
execute as @e[x=0,type=item_display,tag=elevator.brain] at @s align xz positioned ~0.5 ~ ~0.5 run function pandamium:impl/hub/elevator/brain/move with entity @s data.elevator.brain
