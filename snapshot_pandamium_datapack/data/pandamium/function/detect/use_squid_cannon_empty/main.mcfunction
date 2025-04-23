advancement revoke @s only pandamium:detect/use_squid_cannon_empty

scoreboard players set <found_squid> variable 0
execute anchored eyes positioned ^ ^ ^ summon minecraft:snowball if function pandamium:utils/raycast/to_entity/squid if function pandamium:utils/discard_marker on origin at @s run function pandamium:detect/use_squid_cannon_empty/as_squid
execute if score <found_squid> variable matches 0 run return 0

playsound minecraft:item.bucket.fill_fish player @a[distance=..16]

execute if items entity @s weapon.mainhand *[custom_data~{pandamium:{id:"squid_cannon_empty"}}] run return run function pandamium:detect/use_squid_cannon_empty/fill_cannon_mainhand with storage pandamium:local functions."pandamium:detect/use_squid_cannon_empty/*"
execute if items entity @s weapon.offhand *[custom_data~{pandamium:{id:"squid_cannon_empty"}}] run return run function pandamium:detect/use_squid_cannon_empty/fill_cannon_offhand with storage pandamium:local functions."pandamium:detect/use_squid_cannon_empty/*"
