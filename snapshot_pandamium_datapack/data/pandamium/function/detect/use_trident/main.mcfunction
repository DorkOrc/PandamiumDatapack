execute unless entity @s[advancements={pandamium:minecraft/adventure/do_a_barrel_roll=true,pandamium:pandamium/mob_heads/blue_shell=true}] run function pandamium:detect/use_trident/check_advancements

execute if score @s parkour.checkpoint matches 0.. run advancement grant @s only pandamium:detect/parkour/cheat use_trident

execute if predicate pandamium:holding/using_riptide_trident run function pandamium:misc/set_zooming_cooldown {amount:80}

# track thrown tridents
execute at @s[scores={gameplay_perms=6..,optn.do_projectile_trails=1,active_particles=1..}] anchored eyes positioned ^ ^ ^ as @e[type=trident,predicate=pandamium:periodic_tick/on_load,distance=..10] run function pandamium:impl/database/cache/modify/add_projectile_trail_entry/main

scoreboard players reset @s detect.use.trident
advancement revoke @s only pandamium:detect/use_trident
