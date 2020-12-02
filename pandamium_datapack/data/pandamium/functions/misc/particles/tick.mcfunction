execute if score @s active_particles matches 1 at @s run particle minecraft:composter ~ ~0.25 ~ 0.5 0.5 0.5 0 3 force
execute if score @s active_particles matches 2 at @s run particle minecraft:dragon_breath ~ ~0.25 ~ 0.5 0.5 0.5 0 2 force
execute if score @s active_particles matches 3 at @s run particle minecraft:end_rod ~ ~0.25 ~ 0.5 0.5 0.5 0 1 force

execute if score @s active_particles matches 4 at @s run particle minecraft:small_flame ~ ~0.25 ~ 0.5 0.5 0.5 0 2 force @s
execute if score @s active_particles matches 4 at @s run particle minecraft:flame ~ ~0.25 ~ 0.5 0.5 0.5 0 2 force @a[distance=0.1..]

execute if score @s active_particles matches 5 at @s run particle minecraft:note ~ ~0.25 ~ 0.5 0.5 0.5 2 1 force
execute if score @s active_particles matches 6 at @s run particle minecraft:soul_fire_flame ~ ~0.25 ~ 0.5 0.5 0.5 0 2 force
execute if score @s active_particles matches 7 at @s run particle minecraft:soul ~ ~0.25 ~ 0.5 0.5 0.5 0 1 force
execute if score @s active_particles matches 11 at @s run particle minecraft:crit ~ ~0.25 ~ 0.6 0.6 0.6 0.1 1 force
execute if score @s active_particles matches 13 at @s run particle minecraft:mycelium ~ ~0.5 ~ 0.3 0.5 0.3 0 1 force
execute if score @s active_particles matches 14 at @s run particle minecraft:totem_of_undying ~ ~0.25 ~ 0.3 0.5 0.3 0.1 1 force
execute if score @s active_particles matches 15 at @s run particle minecraft:dust 1 0 0 0.6 ~ ~0.25 ~ 0.3 0.6 0.3 0.2 1 force
execute if score @s active_particles matches 16 at @s run particle minecraft:bubble_pop ~ ~1 ~ 1 0.5 1 0 1 force
execute if score @s active_particles matches 17 at @s run particle minecraft:ash ~ ~1 ~ 0.3 0.5 0.3 0.1 1
execute if score @s active_particles matches 18 at @s run particle minecraft:white_ash ~ ~1 ~ 0.3 0.5 0.3 0.1 1
execute if score @s active_particles matches 20 at @s run particle minecraft:item_slime ~ ~0.25 ~ 0.4 0.5 0.4 0 1

execute if score @s active_particles matches 21 at @s run particle dust 100 100 100 0.5 ~ ~1 ~ 0.3 0.5 0.3 0.5 1 force @s
execute if score @s active_particles matches 21 at @s run particle dust 100 100 100 0.5 ~ ~1 ~ 0.3 0.5 0.3 0.5 1 force @a[distance=0.1..]

execute if score @s active_particles matches 22 at @s run particle minecraft:ambient_entity_effect ~ ~1 ~ 0 0.5 0 0.1 1 force @s
execute if score @s active_particles matches 22 at @s run particle minecraft:entity_effect ~ ~1 ~ 0 0.5 0 0.1 1 force @a[distance=0.1..]

execute if score @s active_particles matches 23 at @s run particle minecraft:snowflake ~ ~2.2 ~ 0.3 0 0.3 0 1 force
execute if score @s active_particles matches 25 at @s run particle minecraft:nautilus ~ ~0.25 ~ 0.5 0.5 0.5 0.1 1
execute if score @s active_particles matches 26 at @s run particle minecraft:falling_nectar ~ ~0.25 ~ 0.3 0.5 0.3 0.1 1
execute if score @s active_particles matches 27 at @s run particle minecraft:warped_spore ~ ~0.25 ~ 0 0 0 0 1

execute if score @s active_particles matches 28 at @s run particle dust 0 0 0 1 ~ ~1 ~ 0.3 0.5 0.3 0.1 2 force @s
execute if score @s active_particles matches 28 at @s run particle minecraft:squid_ink ~ ~0.25 ~ 0.3 0.5 0.3 0.1 2 force @a[distance=0.1..]

execute if score @s active_particles matches 29 at @s run function pandamium:misc/particles/halo
execute if score @s active_particles matches 30 at @s run function pandamium:misc/particles/devil
execute if score @s active_particles matches 31 at @s run function pandamium:misc/particles/olex
execute if score @s active_particles matches 32 at @s run function pandamium:misc/particles/tears

execute if score @s active_particles matches 33 at @s run particle minecraft:falling_lava ~ ~0.5 ~ 0.2 0.5 0.2 0.05 1
execute if score @s active_particles matches 34 at @s run particle minecraft:dust_color_transition 0.199 0.871 0.918 1 1 0 0 ~ ~0.25 ~ 0.3 0.6 0.3 0.05 1

execute if score @s active_particles matches 50 at @s run particle minecraft:elder_guardian ~ ~ ~ 0 0 0 0 1 force @s
