execute if score @s active_particles matches 1 run particle composter ~ ~0.25 ~ 0.5 0.5 0.5 0 3 force
execute if score @s active_particles matches 2 run particle dragon_breath ~ ~0.25 ~ 0.5 0.5 0.5 0 2 force
execute if score @s active_particles matches 3 run particle end_rod ~ ~0.25 ~ 0.5 0.5 0.5 0 1 force

execute if score @s active_particles matches 4 run particle small_flame ~ ~0.25 ~ 0.5 0.5 0.5 0 2 force @s
execute if score @s active_particles matches 4 run particle flame ~ ~0.25 ~ 0.5 0.5 0.5 0 2 force @a[distance=0.1..]

execute if score @s active_particles matches 5 run particle note ~ ~0.25 ~ 0.5 0.5 0.5 2 1 force
execute if score @s active_particles matches 6 run particle soul_fire_flame ~ ~0.25 ~ 0.5 0.5 0.5 0 2 force
execute if score @s active_particles matches 7 run particle soul ~ ~0.25 ~ 0.5 0.5 0.5 0 1 force
execute if score @s active_particles matches 11 run particle crit ~ ~0.25 ~ 0.6 0.6 0.6 0.1 1 force
execute if score @s active_particles matches 13 run particle mycelium ~ ~0.5 ~ 0.3 0.5 0.3 0 1 force
execute if score @s active_particles matches 14 run particle totem_of_undying ~ ~0.25 ~ 0.3 0.5 0.3 0.1 1 force
#execute if score @s active_particles matches 15 run particle dust 1 0 0 0.6 ~ ~0.25 ~ 0.3 0.6 0.3 0.2 1 force
execute if score @s active_particles matches 16 run particle bubble_pop ~ ~1 ~ 1 0.5 1 0 1 force
execute if score @s active_particles matches 17 run particle ash ~ ~1 ~ 0.3 0.5 0.3 0.1 1
execute if score @s active_particles matches 18 run particle white_ash ~ ~1 ~ 0.3 0.5 0.3 0.1 1
execute if score @s active_particles matches 20 run particle item_slime ~ ~0.25 ~ 0.4 0.5 0.4 0 1

#execute if score @s active_particles matches 21 run particle dust 100 100 100 0.5 ~ ~1 ~ 0.3 0.5 0.3 0.5 1 force @s
#execute if score @s active_particles matches 21 run particle dust 100 100 100 0.5 ~ ~1 ~ 0.3 0.5 0.3 0.5 1 force @a[distance=0.1..]

execute if score @s active_particles matches 22 run particle ambient_entity_effect ~ ~1 ~ 0 0.5 0 0.1 1 force @s
execute if score @s active_particles matches 22 run particle entity_effect ~ ~1 ~ 0 0.5 0 0.1 1 force @a[distance=0.1..]

execute if score @s active_particles matches 23 run particle snowflake ~ ~2.2 ~ 0.3 0 0.3 0 1 force
execute if score @s active_particles matches 25 run particle nautilus ~ ~0.25 ~ 0.5 0.5 0.5 0.1 1
execute if score @s active_particles matches 26 run particle falling_nectar ~ ~0.25 ~ 0.3 0.5 0.3 0.1 1
execute if score @s active_particles matches 27 run particle warped_spore ~ ~0.25 ~ 0 0 0 0 1

#execute if score @s active_particles matches 28 run particle dust 0 0 0 1 ~ ~1 ~ 0.3 0.5 0.3 0.1 2 force @s
execute if score @s active_particles matches 28 run particle squid_ink ~ ~0.25 ~ 0.3 0.5 0.3 0.1 2 force @a[distance=0.1..]

execute if score @s active_particles matches 29 run particle falling_lava ~ ~0.5 ~ 0.2 0.5 0.2 0.05 1
#execute if score @s active_particles matches 30 run particle dust_color_transition 0.199 0.871 0.918 1 1 0 0 ~ ~0.25 ~ 0.3 0.6 0.3 0.05 1

#execute if score @s active_particles matches 31 positioned ~ ~-0.2 ~ anchored eyes run function pandamium:misc/particles/halo
#execute if score @s active_particles matches 32 positioned ~ ~-0.2 ~ anchored eyes run function pandamium:misc/particles/devil
#execute if score @s active_particles matches 33 positioned ~ ~-0.2 ~ anchored eyes run function pandamium:misc/particles/olex
execute if score @s active_particles matches 34 positioned ~ ~-0.2 ~ anchored eyes run function pandamium:misc/particles/tears

execute if score @s active_particles matches 50 run particle elder_guardian ~ ~ ~ 0 0 0 0 1 force @s
