# Trails
execute if score @s active_particles matches 1 run particle composter ~ ~0.25 ~ 0.5 0.4 0.5 0 1
execute if score @s active_particles matches 11 run particle crit ~ ~0.25 ~ 0.6 0.4 0.6 0.1 1
execute if score @s active_particles matches 13 run particle mycelium ~ ~0.5 ~ 0.3 0.4 0.3 0 1
execute if score @s active_particles matches 14 run particle totem_of_undying ~ ~0.5 ~ 0.3 0.4 0.3 0.1 1
execute if score @s active_particles matches 15 run particle dust 1 0 0 0.6 ~ ~0.5 ~ 0.3 0.4 0.3 0.2 1
execute if score @s active_particles matches 16 run particle bubble_pop ~ ~1 ~ 1 0.5 1 0 1
execute if score @s active_particles matches 17 run particle ash ~ ~1 ~ 0.3 0.4 0.3 0.1 1
execute if score @s active_particles matches 18 run particle white_ash ~ ~1 ~ 0.3 0.4 0.3 0.1 1
execute if score @s active_particles matches 20 run particle enchant ~ ~0.4 ~ 0.4 0.4 0.4 0.1 2
execute if score @s active_particles matches 21 run particle dust 100 100 100 0.5 ~ ~1 ~ 0.3 0.4 0.3 0.5 1
execute if score @s active_particles matches 22 run particle smoke ~ ~0.25 ~ 0.3 0 0.3 0.05 3
execute if score @s active_particles matches 23 run particle snowflake ~ ~0.25 ~ 0.2 0.2 0.2 0.05 1
execute if score @s active_particles matches 25 run particle nautilus ~ ~0.25 ~ 0.5 0.4 0.5 0.1 1
execute if score @s active_particles matches 26 run particle falling_nectar ~ ~0.25 ~ 0.3 0.4 0.3 0.1 1
execute if score @s active_particles matches 27 run particle warped_spore ~ ~0.25 ~ 0 0 0 0 1

execute if score @s active_particles matches 28 run particle squid_ink ~ ~0.25 ~ 0.1 0.1 0.1 0.05 1 force @s
execute if score @s active_particles matches 28 run particle squid_ink ~ ~0.25 ~ 0.3 0.4 0.3 0.1 2 force @a[distance=0.1..32]

execute if score @s active_particles matches 29 run particle falling_lava ~ ~0.5 ~ 0.2 0.4 0.2 0.05 1
execute if score @s active_particles matches 30 run particle dust_color_transition 0.199 0.871 0.918 1 1 0 0 ~ ~0.25 ~ 0.3 0.4 0.3 0.05 1
execute if score @s active_particles matches 31 run particle glow ~ ~0.25 ~ 0 0.2 0 0.01 1

execute if score @s active_particles matches 32 run particle glow_squid_ink ~ ~0.25 ~ 0.1 0.1 0.1 0.05 1 force @s
execute if score @s active_particles matches 32 run particle glow_squid_ink ~ ~0.25 ~ 0.3 0.4 0.3 0.1 2 force @a[distance=0.1..32]

execute if score @s active_particles matches 34 run particle wax_on ~ ~0.25 ~ 0.4 0.25 0.4 1 1 force @s
execute if score @s active_particles matches 34 run particle wax_on ~ ~0.5 ~ 0.4 0.5 0.4 1 1 force @a[distance=0.1..32]

execute if score @s active_particles matches 35 run particle wax_off ~ ~0.25 ~ 0.4 0.25 0.4 1 1 force @s
execute if score @s active_particles matches 35 run particle wax_off ~ ~0.5 ~ 0.4 0.5 0.4 1 1 force @a[distance=0.1..32]

execute if score @s active_particles matches 37 run particle electric_spark ~ ~0.25 ~ 0.4 0.25 0.4 0.1 1 force @s
execute if score @s active_particles matches 37 run particle electric_spark ~ ~0.5 ~ 0.4 0.5 0.4 0.1 1 force @a[distance=0.1..32]

execute if score @s active_particles matches 38 run particle scrape ~ ~0.25 ~ 0.4 0.25 0.4 1 1 force @s
execute if score @s active_particles matches 38 run particle scrape ~ ~0.5 ~ 0.4 0.5 0.4 1 1 force @a[distance=0.1..32]
execute if score @s active_particles matches 40 run particle sculk_charge_pop ~ ~0.4 ~ 0.1 0.3 0.1 0.05 1
execute if score @s active_particles matches 41 run particle sculk_charge 0 ~ ~0.4 ~ 0.1 0.3 0.1 0.05 1
execute if score @s active_particles matches 43 run particle dust_plume ~ ~ ~ 0.1 0 0.1 0 1

execute if score @s active_particles matches 44 rotated ~ 0 run particle trial_spawner_detection ^ ^ ^-0.3 0.3 0 0.3 0.02 1
execute if score @s active_particles matches 45 rotated ~ 0 run particle vault_connection ~ ~1 ~ 0.25 0.75 0.25 1 1

execute if score @s active_particles matches 99 run particle portal ~ ~0.1 ~ 0.3 0.3 0.3 0.1 2

# Custom Trails (anchored to head)
execute positioned ~ ~-0.2 ~ anchored eyes run function pandamium:impl/particles/run_custom_trail_head

# Custom Trails (anchored to body)
execute positioned ~ ~0.601 ~ store success score <crawling> variable unless entity @s[dx=0]
execute store success score <on_ground> variable unless block ~ ~-0.01 ~ air
execute if score <crawling> variable matches 0 unless predicate pandamium:sneaking rotated ~ 0 run function pandamium:impl/particles/run_custom_trail_body
execute if score <crawling> variable matches 0 if predicate pandamium:sneaking rotated ~ 0 positioned ^ ^ ^-0.02 rotated ~ 30 run function pandamium:impl/particles/run_custom_trail_body
execute if score <crawling> variable matches 1 if score <on_ground> variable matches 1 rotated ~ 90 positioned ^ ^0.5 ^-0.05 run function pandamium:impl/particles/run_custom_trail_body
execute if score <crawling> variable matches 1 if score <on_ground> variable matches 0 rotated ~ ~90 positioned ^ ^0.5 ^-0.05 run function pandamium:impl/particles/run_custom_trail_body

# Custom Trails (other)
execute if score @s active_particles matches 79 if score <storm> variable matches 100.. run particle falling_water ~ ~2.6 ~ .5 0 .5 .001 1
execute if score @s active_particles matches 80 run particle falling_lava ~ ~2.6 ~ .5 0 .5 .001 1

execute if score @s active_particles matches 50 run particle elder_guardian ~ ~ ~ 0 0 0 0 1 force @s
