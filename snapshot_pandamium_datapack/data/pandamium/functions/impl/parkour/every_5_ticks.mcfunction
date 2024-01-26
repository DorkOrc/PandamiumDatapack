execute as @a[scores={parkour.checkpoint=0..}] unless score @s hide_parkour_timer matches 1 run function pandamium:impl/parkour/display_timer
title @a[scores={parkour.checkpoint=0..,hide_parkour_timer=1}] actionbar [{"text":"Parkour: ","color":"dark_aqua"},{"text":"**","color":"aqua"},":",{"text":"**","color":"aqua"}," | ",{"text":"/trigger ","color":"gray"},{"text":"parkour","color":"aqua"}]

#

execute at @e[type=marker,x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024,tag=parkour.node,tag=parkour.start] run particle falling_dust diamond_block ~ ~0.5 ~ 0 0 0 0 1
execute at @a[scores={parkour.checkpoint=0..}] positioned ~-32 ~-32 ~-32 as @e[type=marker,dx=64,dy=64,dz=64,tag=parkour.node,tag=!parkour.start] at @s run function pandamium:impl/parkour/node_particles
