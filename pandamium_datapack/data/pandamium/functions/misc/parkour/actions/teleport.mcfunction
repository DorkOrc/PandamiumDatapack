execute store result score <minimum_checkpoint> variable run data get storage pandamium:temp NBT.data.teleport.minimum_checkpoint

# Teleport is scheduled to the begining of the next tick (via this queue) because the advancement trigger, enter_block, happens at the very end of the tick, resulting in "Player moved wrongly" warnings, jittering and sometimes the teleport failing outright
execute if score @s parkour.checkpoint >= <minimum_checkpoint> variable run data modify storage pandamium:queue queue append value {action:"teleport_player",allow_parkour_teleport:1b}
execute if score @s parkour.checkpoint >= <minimum_checkpoint> variable run data modify storage pandamium:queue queue[-1].destination set from storage pandamium:temp NBT.data.teleport.destination
execute if score @s parkour.checkpoint >= <minimum_checkpoint> variable store result storage pandamium:queue queue[-1].player int 1 run scoreboard players get @s id
