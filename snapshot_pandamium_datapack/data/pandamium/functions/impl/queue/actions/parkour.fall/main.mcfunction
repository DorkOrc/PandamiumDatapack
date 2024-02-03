#{
#	action: "parkour.fall"
#}

execute as @a[scores={parkour.has_fallen=1}] at @s run function pandamium:impl/queue/actions/parkour.fall/as_player

scoreboard players add @a[scores={parkour.has_fallen=1}] parkour.falls 1
execute as @a[scores={parkour.has_fallen=1,parkour.checkpoint=0..}] run function pandamium:impl/parkour/actions/return_to_last_checkpoint

scoreboard players reset @a[scores={parkour.has_fallen=1}] parkour.has_fallen

execute store result score <total_death_points> variable in overworld if entity @e[type=area_effect_cloud,tag=parkour.death_point,x=0,predicate=pandamium:in_spawn]
execute store result storage pandamium:templates macro.value.value int 1 run scoreboard players remove <total_death_points> variable 50
execute if score <total_death_points> variable matches 1.. run function pandamium:impl/queue/actions/parkour.fall/kill_excess_death_points with storage pandamium:templates macro.value
