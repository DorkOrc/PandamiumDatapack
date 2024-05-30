data modify storage pandamium:queue entries append value {action:"teleport_to_end_platform"}
execute store result storage pandamium:queue entries[-1].player int 1 run scoreboard players get @s id
