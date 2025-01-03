execute unless entity @s[advancements={pandamium:minecraft/adventure/do_a_barrel_roll=true,pandamium:pandamium/mob_heads/blue_shell=true}] run function pandamium:detect/use_trident/check_advancements

execute if score @s parkour.checkpoint matches 0.. run advancement grant @s only pandamium:detect/parkour/cheat use_trident

execute if predicate pandamium:holding/using_riptide_trident run function pandamium:misc/set_zooming_cooldown {amount:80}

scoreboard players reset @s detect.use.trident
advancement revoke @s only pandamium:detect/use_trident
