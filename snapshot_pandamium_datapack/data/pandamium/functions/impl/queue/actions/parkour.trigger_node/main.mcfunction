#{
#	action: "parkour.trigger_node",
#	player: INT,
#	node: {}
#}

data modify storage pandamium:temp parkour.node set from storage pandamium:queue selected.entry.node

execute store result score <id> variable run data get storage pandamium:queue selected.entry.player
execute as @a if score @s id = <id> variable at @s run function pandamium:impl/parkour/trigger_node
