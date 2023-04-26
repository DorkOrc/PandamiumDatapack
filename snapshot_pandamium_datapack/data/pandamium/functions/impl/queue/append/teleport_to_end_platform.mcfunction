data modify storage pandamium:temp queue.entry set value {action:"teleport_to_end_platform",wait:0}
execute store result storage pandamium:temp queue.entry.player int 1 run scoreboard players get @s id
data modify storage pandamium:queue queue append from storage pandamium:temp queue.entry
