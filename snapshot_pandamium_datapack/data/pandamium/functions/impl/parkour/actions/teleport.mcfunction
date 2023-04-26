execute store result score <minimum_checkpoint> variable run data get storage pandamium:temp parkour.node.data.teleport.minimum_checkpoint

execute if score @s parkour.checkpoint >= <minimum_checkpoint> variable store result score <tp_x> variable run data get storage pandamium:temp parkour.node.data.teleport.destination[0]
execute if score @s parkour.checkpoint >= <minimum_checkpoint> variable store result score <tp_y> variable run data get storage pandamium:temp parkour.node.data.teleport.destination[1]
execute if score @s parkour.checkpoint >= <minimum_checkpoint> variable store result score <tp_z> variable run data get storage pandamium:temp parkour.node.data.teleport.destination[2]
execute if score @s parkour.checkpoint >= <minimum_checkpoint> variable run scoreboard players set <tp_d> variable 0

execute if score @s parkour.checkpoint >= <minimum_checkpoint> variable run scoreboard players set <parkour.allow_teleport> variable 1
execute if score @s parkour.checkpoint >= <minimum_checkpoint> variable run function pandamium:teleport/to_scores
execute if score @s parkour.checkpoint >= <minimum_checkpoint> variable run scoreboard players reset <parkour.allow_teleport> variable

# (Queue) Trigger destination node, unless it is another teleporter node
scoreboard players set <node_at_destination> variable 0
data modify storage pandamium:queue queue append value {action:'parkour/trigger_node'}
execute at @s if block ~ ~ ~ #pressure_plates as @e[type=marker,tag=parkour.node,limit=1,sort=nearest,distance=..1,nbt=!{data:{teleport:{}}}] store success score <node_at_destination> variable run data modify storage pandamium:queue queue[-1].node set from entity @s
execute if score <node_at_destination> variable matches 1 store result storage pandamium:queue queue[-1].player int 1 run scoreboard players get @s id
execute if score <node_at_destination> variable matches 0 run data remove storage pandamium:queue queue[-1]
