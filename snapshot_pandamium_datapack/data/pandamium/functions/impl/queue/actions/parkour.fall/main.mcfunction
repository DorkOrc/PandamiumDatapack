#{
#	action: "parkour.fall"
#}

execute as @a[scores={parkour.has_fallen=1}] at @s run function pandamium:impl/queue/actions/parkour.fall/as_player

scoreboard players add @a[scores={parkour.has_fallen=1}] parkour.falls 1
execute as @a[scores={parkour.has_fallen=1,parkour.checkpoint=0..}] run function pandamium:impl/parkour/actions/return_to_last_checkpoint

scoreboard players reset @a[scores={parkour.has_fallen=1}] parkour.has_fallen