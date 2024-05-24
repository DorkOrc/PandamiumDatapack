data remove storage pandamium:temp parkour.node
execute at @s as @e[type=marker,distance=..3,tag=parkour.node,sort=nearest,limit=1] run data modify storage pandamium:temp parkour.node set from entity @s

execute if data storage pandamium:temp parkour.node run data modify storage pandamium:queue entries append value {action:"parkour.trigger_node"}
execute if data storage pandamium:temp parkour.node store result storage pandamium:queue entries[-1].player int 1 run scoreboard players get @s id
execute if data storage pandamium:temp parkour.node run data modify storage pandamium:queue entries[-1].node set from storage pandamium:temp parkour.node

advancement revoke @s only pandamium:detect/parkour/enter_pressure_plate
