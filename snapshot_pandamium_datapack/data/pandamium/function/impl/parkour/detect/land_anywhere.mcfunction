scoreboard players operation <node_id> variable = @s parkour.checkpoint
execute positioned ~ ~-0.5 ~ as @e[type=marker,tag=parkour.replace_block,distance=1.3..32] at @s align xyz unless entity @a[dy=1,limit=1] run function pandamium:impl/parkour/replace_block with entity @s data

advancement revoke @s only pandamium:detect/parkour/land_anywhere
