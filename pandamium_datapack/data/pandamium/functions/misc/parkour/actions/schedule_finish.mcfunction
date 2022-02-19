# Teleport is scheduled to the begining of the next tick (via this queue) because the advancement trigger, enter_block, happens at the very end of the tick, resulting in "Player moved wrongly" warnings, jittering and sometimes the teleport failing outright
data modify storage pandamium:queue queue append value {action:"finish_parkour"}
execute store result storage pandamium:queue queue[-1].player int 1 run scoreboard players get @s id
