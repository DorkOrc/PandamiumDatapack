execute if score @s parkour.checkpoint matches 0.. run advancement grant @s only pandamium:detect/parkour/cheat aviate
execute if predicate pandamium:wearing_pig_head run advancement grant @s only pandamium:pandamium/mob_heads/when_pigs_fly

function pandamium:misc/set_zooming_cooldown {amount:60}

scoreboard players reset @s detect.aviate
advancement revoke @s only pandamium:detect/aviate
