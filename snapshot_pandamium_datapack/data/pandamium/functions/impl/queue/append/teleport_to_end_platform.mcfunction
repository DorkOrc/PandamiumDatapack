data modify storage pandamium:queue entries append value {action:"teleport_to_end_platform",wait:0}
execute store result storage pandamium:queue entries[-1].player int 1 run scoreboard players get @s id
