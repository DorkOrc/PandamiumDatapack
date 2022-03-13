data remove storage pandamium:temp NBT
execute at @s as @e[type=marker,tag=parkour.node,limit=1,sort=nearest,distance=..3] run data modify storage pandamium:temp NBT set from entity @s

execute if data storage pandamium:temp NBT run data modify storage pandamium:queue queue append value {action:"parkour/trigger_node"}
execute if data storage pandamium:temp NBT store result storage pandamium:queue queue[-1].player int 1 run scoreboard players get @s id
execute if data storage pandamium:temp NBT run data modify storage pandamium:queue queue[-1].NBT set from storage pandamium:temp NBT

advancement revoke @s only pandamium:detect/parkour/enter_pressure_plate
