#{
#	action: "parkour.fall"
#}

# create death point
execute as @a[scores={parkour.has_fallen=1}] at @s run function pandamium:impl/queue/actions/parkour.fall/as_player

# limit death points (global)
execute store result score <total_death_points> variable in overworld if entity @e[type=area_effect_cloud,tag=parkour.death_point,x=0,predicate=pandamium:in_spawn]
execute store result storage pandamium:templates macro.value.value int 1 run scoreboard players remove <total_death_points> variable 50
execute if score <total_death_points> variable matches 1.. run function pandamium:impl/queue/actions/parkour.fall/kill_excess_death_points with storage pandamium:templates macro.value

# return players to checkpoint (or start)
scoreboard players add @a[scores={parkour.has_fallen=1}] parkour.falls 1
execute as @a[scores={parkour.has_fallen=1,parkour.checkpoint=0..,optn.parkour.restart_on_fall=0}] run function pandamium:impl/parkour/actions/return_to_last_checkpoint
execute as @a[scores={parkour.has_fallen=1,parkour.checkpoint=0..,optn.parkour.restart_on_fall=1}] run function pandamium:impl/parkour/actions/restart

scoreboard players reset @a[scores={parkour.has_fallen=1}] parkour.has_fallen
