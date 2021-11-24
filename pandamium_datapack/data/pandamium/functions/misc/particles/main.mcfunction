# Trails
execute if score @s active_particles matches 8 run particle heart ~ ~0.5 ~ 0.3 0.5 0.3 0 2 force @a[distance=0.1..]
execute if score @s active_particles matches 8 run particle heart ~ ~ ~ 0.3 0.5 0.3 0 1 force @s

execute if score @s active_particles matches 9 run particle angry_villager ~ ~0.5 ~ 0.3 0.5 0.3 0 2 force @a[distance=0.1..]
execute if score @s active_particles matches 9 run particle angry_villager ~ ~ ~ 0.3 0.5 0.3 0 1 force @s

execute if score @s active_particles matches 10 run particle witch ~ ~0.5 ~ 0.3 0.5 0.3 0 3
execute if score @s active_particles matches 12 run particle instant_effect ~ ~0.5 ~ 0.5 0.5 0.5 0 5
execute if score @s active_particles matches 19 run particle dripping_obsidian_tear ~ ~0.5 ~ 0.5 1 0.5 0 1
execute if score @s active_particles matches 21 run particle entity_effect ~ ~0 ~ 0 0 0 0.1 1
execute if score @s active_particles matches 24 run particle campfire_cosy_smoke ~ ~ ~ 0.3 0.5 0.3 0.01 1
execute if score @s active_particles matches 33 run particle spore_blossom_air ~ ~0.25 ~ 0.1 0.3 0.1 0 1

execute if score @s active_particles matches 36 if score <light_timer> variable matches 0 run particle block_marker light[level=15] ~ ~2.5 ~

# Specials
execute if score @s active_particles matches 68 if score <blush_timer> variable matches 0 run particle heart ~ ~1.6 ~ 0.3 0.0 0.3 0 1

execute if score @s active_particles matches 79 run function pandamium:misc/particles/specials/storm
execute if score @s active_particles matches 80 run function pandamium:misc/particles/specials/lava_storm
