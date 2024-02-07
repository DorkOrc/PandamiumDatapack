scoreboard players operation <node_id> variable = @s parkour.checkpoint
execute positioned ~ ~-1 ~ as @e[type=marker,tag=parkour.replace_block,distance=1..] run function pandamium:impl/parkour/replace_block with entity @s data

advancement revoke @s only pandamium:detect/parkour/land_anywhere
