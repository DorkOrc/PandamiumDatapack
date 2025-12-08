scoreboard players operation <node_id> variable = @s parkour.checkpoint

# teleport back
scoreboard players set <parkour.allow_teleport> variable 1

execute if score @s parkour.checkpoint matches 200 in pandamium:hub positioned -292.5 125.00 148.5 rotated -180 10 run function pandamium:utils/teleport/here
execute if score @s parkour.checkpoint matches 300 in pandamium:hub positioned -300.5 136 197.5 rotated 0 30 run function pandamium:utils/teleport/here
tag @s add source
execute unless score @s parkour.checkpoint matches 200 unless score @s parkour.checkpoint matches 300 as @e[x=0,type=marker,tag=parkour.node] if score @s parkour.node_id = <node_id> variable at @s as @a[tag=source,limit=1] run function pandamium:utils/teleport/here
tag @s remove source

scoreboard players set <parkour.allow_teleport> variable 0

# replace changeable blocks (e.g. big dripleaves)
execute in pandamium:hub as @e[x=0,type=marker,tag=parkour.replace_block] run function pandamium:impl/parkour/replace_block with entity @s data
