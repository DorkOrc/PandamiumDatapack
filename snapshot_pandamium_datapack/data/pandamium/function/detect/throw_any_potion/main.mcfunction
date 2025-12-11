# prevent splash water bottles at spawn
execute if predicate pandamium:in_spawn anchored eyes as @e[type=#pandamium:potion,distance=..4,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] run data modify entity @s Item.components."minecraft:potion_contents" set value {custom_color:3694022}

# track thrown potions
execute at @s[scores={optn.do_projectile_trails=1,active_particles=1..},predicate=pandamium:player/has_supporter_perks] anchored eyes positioned ^ ^ ^ as @e[type=#pandamium:potion,predicate=pandamium:periodic_tick/on_load,distance=..10] run function pandamium:impl/database/cache/modify/add_projectile_trail_entry/main

scoreboard players reset @s detect.use.splash_potion
scoreboard players reset @s detect.use.lingering_potion
advancement revoke @s only pandamium:detect/throw_any_potion
