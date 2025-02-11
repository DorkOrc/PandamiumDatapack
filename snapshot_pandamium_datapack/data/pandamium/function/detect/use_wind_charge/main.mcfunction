execute if score @s parkour.checkpoint matches 1.. run advancement grant @s only pandamium:detect/parkour/cheat use_wind_charge
execute if predicate pandamium:in_spawn run function pandamium:detect/shoot_wind_charge_in_protected_region/main
execute if dimension the_end if function pandamium:utils/if/in_enderman_farm_protection run function pandamium:detect/shoot_wind_charge_in_protected_region/main

# track thrown wind charges
execute at @s[scores={gameplay_perms=6..}] anchored eyes positioned ^ ^ ^ as @e[type=wind_charge,predicate=pandamium:periodic_tick/on_load,distance=..10] run function pandamium:impl/database/cache/modify/add_entities_entry/main

scoreboard players reset @s detect.use.wind_charge
advancement revoke @s only pandamium:detect/use_wind_charge
