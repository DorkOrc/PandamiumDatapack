execute if score @s parkour.checkpoint matches 0.. run advancement grant @s only pandamium:detect/parkour/cheat
execute if predicate pandamium:wearing_pig_head run advancement grant @s only pandamium:pandamium/mob_heads/when_pigs_fly

scoreboard players reset @s detect.aviate
advancement revoke @s only pandamium:detect/aviate
