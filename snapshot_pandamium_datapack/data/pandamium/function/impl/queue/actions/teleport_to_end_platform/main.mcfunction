#{
#	action: "teleport_to_end_platform",
#	player: INT
#}

# stop if the player no longer exists
$execute unless entity @e[type=player,scores={id=$(player)},limit=1] run return 0

# continue as the player
$execute as @a[scores={id=$(player)},limit=1] run function pandamium:impl/queue/actions/teleport_to_end_platform/as_player
