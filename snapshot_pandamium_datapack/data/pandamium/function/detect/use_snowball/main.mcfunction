# track thrown snowballs
execute at @s[scores={gameplay_perms=6..}] anchored eyes positioned ^ ^ ^ as @e[type=snowball,predicate=pandamium:periodic_tick/on_load,distance=..10] run function pandamium:impl/database/cache/modify/add_projectile_trail_entry/main

scoreboard players reset @s detect.use.snowball
advancement revoke @s only pandamium:detect/use_snowball
