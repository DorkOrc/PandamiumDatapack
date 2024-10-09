data remove storage pandamium:temp parkour.node
execute at @s run data modify storage pandamium:temp parkour.node set from entity @n[type=marker,tag=parkour.node,distance=..3]

execute if data storage pandamium:temp parkour.node run data modify storage pandamium:queue entries append value {action:"parkour.trigger_node"}
execute if data storage pandamium:temp parkour.node store result storage pandamium:queue entries[-1].player int 1 run scoreboard players get @s id
execute if data storage pandamium:temp parkour.node run data modify storage pandamium:queue entries[-1].node set from storage pandamium:temp parkour.node

advancement revoke @s only pandamium:detect/parkour/enter_pressure_plate
