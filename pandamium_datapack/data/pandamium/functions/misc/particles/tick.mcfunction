execute if score @s active_particles matches 1 run particle composter ~ ~0.25 ~ 0.5 0.4 0.5 0 3
execute if score @s active_particles matches 2 run particle dragon_breath ~ ~0.25 ~ 0.5 0.4 0.5 0 2
execute if score @s active_particles matches 3 run particle end_rod ~ ~0.25 ~ 0.5 0.4 0.5 0 1

execute if score @s active_particles matches 4 run particle small_flame ~ ~0.25 ~ 0.5 0.4 0.5 0 2 force @s
execute if score @s active_particles matches 4 run particle flame ~ ~0.25 ~ 0.5 0.4 0.5 0 2 force @a[distance=0.1..32]

execute if score @s active_particles matches 5 run particle note ~ ~0.25 ~ 0.5 0.4 0.5 2 1
execute if score @s active_particles matches 6 run particle soul_fire_flame ~ ~0.25 ~ 0.5 0.4 0.5 0 2
execute if score @s active_particles matches 7 run particle soul ~ ~0.25 ~ 0.5 0.4 0.5 0 1
execute if score @s active_particles matches 11 run particle crit ~ ~0.25 ~ 0.6 0.4 0.6 0.1 1
execute if score @s active_particles matches 13 run particle mycelium ~ ~0.5 ~ 0.3 0.4 0.3 0 1
execute if score @s active_particles matches 14 run particle totem_of_undying ~ ~0.25 ~ 0.3 0.4 0.3 0.1 1
execute if score @s active_particles matches 15 run particle dust 1 0 0 0.6 ~ ~0.25 ~ 0.3 0.4 0.3 0.2 1
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

execute if score @s active_particles matches 33 positioned ~ ~-0.2 ~ anchored eyes run function pandamium:misc/particles/specials/halo
execute if score @s active_particles matches 34 positioned ~ ~-0.2 ~ anchored eyes run function pandamium:misc/particles/specials/devil
execute if score @s active_particles matches 35 positioned ~ ~-0.2 ~ anchored eyes run function pandamium:misc/particles/specials/olex
execute if score @s active_particles matches 36 positioned ~ ~-0.2 ~ anchored eyes run function pandamium:misc/particles/specials/tears
execute if score @s active_particles matches 37 positioned ~ ~-0.2 ~ anchored eyes run function pandamium:misc/particles/specials/blush
execute if score @s active_particles matches 38 positioned ~ ~-0.2 ~ anchored eyes run function pandamium:misc/particles/specials/axolotl
execute if score @s active_particles matches 39 positioned ~ ~-0.2 ~ anchored eyes run function pandamium:misc/particles/specials/warden
execute if score @s active_particles matches 40 positioned ~ ~-0.2 ~ anchored eyes run function pandamium:misc/particles/specials/glow_squid

execute if score @s active_particles matches 50 run particle elder_guardian ~ ~ ~ 0 0 0 0 1 force @s
execute if score @s active_particles matches 51 positioned ~ ~-0.2 ~ anchored eyes run function pandamium:misc/particles/specials/tiny_pepe
