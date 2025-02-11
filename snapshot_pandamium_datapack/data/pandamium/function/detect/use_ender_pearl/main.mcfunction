# prevent ender pearls being used on the parkour courses
execute if score @s parkour.checkpoint matches 1.. run advancement grant @s only pandamium:detect/parkour/cheat use_ender_pearl

# track thrown ender pearls
execute at @s[scores={gameplay_perms=6..}] anchored eyes positioned ^ ^ ^ as @e[type=ender_pearl,predicate=pandamium:periodic_tick/on_load,distance=..10] run function pandamium:impl/database/cache/modify/add_entities_entry/main

scoreboard players reset @s detect.use.ender_pearl
advancement revoke @s only pandamium:detect/use_ender_pearl
