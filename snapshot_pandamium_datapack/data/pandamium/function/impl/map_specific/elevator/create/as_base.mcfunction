data modify entity @s Tags append from storage pandamium:temp location_tag

tag @s add elevator
tag @s add elevator.base
tag @s add elevator.base_new

scoreboard players set <elevator_display_part> variable 0
execute summon block_display run function pandamium:impl/map_specific/elevator/create/as_display

tag @s remove elevator.base_new

ride @s mount @e[type=snowball,tag=elevator.engine_new,limit=1]
