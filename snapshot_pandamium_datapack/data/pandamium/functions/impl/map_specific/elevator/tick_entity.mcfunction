scoreboard players set <elevator_exists> variable 1
execute if entity @s[tag=elevator.is_moving] at @s run function pandamium:impl/map_specific/elevator/moving
