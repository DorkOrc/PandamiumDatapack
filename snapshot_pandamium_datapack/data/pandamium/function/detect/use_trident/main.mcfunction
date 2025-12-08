scoreboard players reset @s detect.use.trident
advancement revoke @s only pandamium:detect/use_trident

# advancement
execute unless entity @s[advancements={pandamium:minecraft/adventure/do_a_barrel_roll=true,pandamium:pandamium/mob_heads/blue_shell=true}] run function pandamium:detect/use_trident/check_advancements

# parkour
execute if score @s parkour.checkpoint matches 0.. run advancement grant @s only pandamium:detect/parkour/cheat use_trident

# zooming
execute if predicate pandamium:holding/using_riptide_trident run function pandamium:misc/set_zooming_cooldown {amount:80}

# track thrown tridents (projectile trail)
execute at @s[scores={gameplay_perms=6..,optn.do_projectile_trails=1,active_particles=1..}] anchored eyes positioned ^ ^ ^ as @e[type=trident,predicate=pandamium:periodic_tick/on_load,distance=..10] run function pandamium:impl/database/cache/modify/add_projectile_trail_entry/main

# track thrown loyalty tridents in The End or The Staff World
execute if predicate pandamium:in_trident_safe_void_dimension anchored eyes positioned ^ ^ ^ as @e[type=trident,predicate=pandamium:periodic_tick/on_load,distance=..10] if items entity @s contents trident[enchantments~[{enchantments:"minecraft:loyalty"}]] unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{passenger:{predicates:{"minecraft:custom_data":{custom_entity_type:"loyalty_trident"}}}}} run function pandamium:detect/use_trident/as_trident
