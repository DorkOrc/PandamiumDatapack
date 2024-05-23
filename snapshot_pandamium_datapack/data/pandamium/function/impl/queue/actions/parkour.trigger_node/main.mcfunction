#{
#	action: "parkour.trigger_node",
#	player: INT,
#	node: {}
#}

data modify storage pandamium:temp parkour.node set from storage pandamium:queue selected.entry.node

$execute as @a[scores={id=$(player)},limit=1] at @s run function pandamium:impl/parkour/trigger_node
