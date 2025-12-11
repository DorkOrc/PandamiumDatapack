scoreboard players reset @s detect.use.egg
scoreboard players reset @s detect.use.blue_egg
scoreboard players reset @s detect.use.brown_egg
advancement revoke @s only pandamium:detect/throw_any_egg

# track thrown eggs
execute at @s[scores={optn.do_projectile_trails=1,active_particles=1..},predicate=pandamium:player/has_supporter_perks] anchored eyes positioned ^ ^ ^ as @e[type=minecraft:egg,predicate=pandamium:periodic_tick/on_load,distance=..10] run function pandamium:impl/database/cache/modify/add_projectile_trail_entry/main
