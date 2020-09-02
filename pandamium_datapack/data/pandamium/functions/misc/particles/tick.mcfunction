execute if score @s active_particle matches 1 at @s run particle minecraft:composter ~ ~0.25 ~ 0.5 0.5 0.5 0 3 force
execute if score @s active_particle matches 2 at @s run particle minecraft:dragon_breath ~ ~0.25 ~ 0.5 0.5 0.5 0 2 force
execute if score @s active_particle matches 3 at @s run particle minecraft:end_rod ~ ~0.25 ~ 0.5 0.5 0.5 0 1 force
execute if score @s active_particle matches 4 at @s run particle minecraft:flame ~ ~0.25 ~ 0.5 0.5 0.5 0 2 force
execute if score @s active_particle matches 5 at @s run particle minecraft:note ~ ~0.25 ~ 0.5 0.5 0.5 2 1 force
execute if score @s active_particle matches 6 at @s run particle minecraft:soul_fire_flame ~ ~0.25 ~ 0.5 0.5 0.5 0 2 force
execute if score @s active_particle matches 7 at @s run particle minecraft:soul ~ ~0.25 ~ 0.5 0.5 0.5 0 1 force
execute if score @s active_particle matches 11 at @s run particle minecraft:crit ~ ~1 ~ 0.6 0.6 0.6 0.1 1 force
execute if score @s active_particle matches 13 at @s run particle minecraft:mycelium ~ ~0.5 ~ 0.3 1 0.3 0 1 force
execute if score @s active_particle matches 14 at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.3 1 0.3 0.1 1 force
execute if score @s active_particle matches 15 at @s run particle minecraft:dust 1 0 0 0.6 ~ ~1 ~ 0.3 0.6 0.3 0.2 1 force
execute if score @s active_particle matches 16 at @s run particle minecraft:bubble_pop ~ ~1 ~ 1 1 1 0 1 force
execute if score @s active_particle matches 17 at @s run particle minecraft:ash ~ ~1 ~ 0.3 1 0.3 0.1 1
execute if score @s active_particle matches 18 at @s run particle minecraft:white_ash ~ ~1 ~ 0.3 1 0.3 0.1 1
execute if score @s active_particle matches 20 at @s run particle minecraft:item_slime ~ ~1 ~ 0.4 1 0.4 0 1

execute if score @s active_particle matches 21 at @s run particle dust 100 100 100 0.5 ~ ~1 ~ 0.3 0.5 0.3 0.5 1 force @s
execute if score @s active_particle matches 21 at @s run particle dust 100 100 100 0.5 ~ ~1 ~ 0.3 0.5 0.3 0.5 1 force @a[distance=0.1..]

execute if score @s active_particle matches 22 at @s run particle minecraft:ambient_entity_effect ~ ~1 ~ 0 1 0 0.1 1 force @s
execute if score @s active_particle matches 22 at @s run particle minecraft:entity_effect ~ ~1 ~ 0 1 0 0.1 1 force @a[distance=0.1..]

execute if score @s active_particle matches 23 at @s run particle minecraft:falling_dust snow ~ ~2.2 ~ 0.3 0 0.3 0 1 force 
execute if score @s active_particle matches 24 at @s run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.3 1 0.3 0.01 1 force @a[distance=0.1..]

execute if score @s active_particle matches 25 at @s run particle minecraft:nautilus ~ ~1 ~ 0.5 0.5 0.5 0.1 1
execute if score @s active_particle matches 26 at @s run particle minecraft:falling_nectar ~ ~1 ~ 0.3 1 0.3 0.1 1

execute if score @s active_particle matches 27 at @s run function pandamium:misc/particles/tears
execute if score @s active_particle matches 28 at @s run function pandamium:misc/particles/halo

execute if score @s active_particle matches 50 at @s run function pandamium:misc/particles/olex
execute if score @s active_particle matches 51 at @s run particle minecraft:elder_guardian

#note_old
execute if score @s active_particle matches 52 at @s run particle minecraft:note ~ ~0.25 ~ 0.5 0.5 0.5 0 1 force
