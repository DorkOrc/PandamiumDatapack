execute as @a[scores={parkour.checkpoint=0..}] unless score @s hide_parkour_timer matches 1 run function pandamium:impl/parkour/display_timer
title @a[scores={parkour.checkpoint=0..,hide_parkour_timer=1}] actionbar [{"text":"Parkour: ","color":"dark_aqua"},{"text":"**","color":"aqua"},":",{"text":"**","color":"aqua"}," | ",{"text":"/trigger ","color":"gray"},{"text":"parkour","color":"aqua"}]

#

execute if score <spawn_area_ticking_state> global matches 1 at @e[type=marker,x=-293,y=125,z=147,distance=..10,tag=parkour.node,tag=parkour.start] run particle minecraft:falling_dust{block_state:{Name:"minecraft:diamond_block"}} ~ ~0.5 ~ 0 0 0 0 1
execute if score <spawn_area_ticking_state> global matches 1 at @a[scores={parkour.checkpoint=0..}] as @e[type=marker,distance=..32,tag=parkour.node,tag=!parkour.start] at @s run function pandamium:impl/parkour/node_particles
