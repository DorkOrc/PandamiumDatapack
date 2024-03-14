# Trails
execute if score @s active_particles matches 2 run particle dragon_breath ~ ~0.5 ~ 0.4 0.4 0.4 0.01 2
execute if score @s active_particles matches 3 run particle end_rod ~ ~0.5 ~ 0.4 0.4 0.4 0 2
execute if score @s active_particles matches 4 run particle flame ~ ~0.5 ~ 0.4 0.4 0.4 0 2
execute if score @s active_particles matches 5 run particle note ~ ~0.5 ~ 0.4 0.4 0.4 2 1
execute if score @s active_particles matches 6 run particle soul_fire_flame ~ ~0.5 ~ 0.4 0.4 0.4 0 2
execute if score @s active_particles matches 7 run particle soul ~ ~0.5 ~ 0.4 0.4 0.4 0 1

execute if score @s active_particles matches 8 run particle heart ~ ~0.5 ~ 0.3 0.5 0.3 0 2 force @a[distance=0.1..]
execute if score @s active_particles matches 8 run particle heart ~ ~ ~ 0.3 0.5 0.3 0 1 force @s

execute if score @s active_particles matches 9 run particle angry_villager ~ ~0.5 ~ 0.3 0.5 0.3 0 2 force @a[distance=0.1..]
execute if score @s active_particles matches 9 run particle angry_villager ~ ~ ~ 0.3 0.5 0.3 0 1 force @s

execute if score @s active_particles matches 10 run particle witch ~ ~0.5 ~ 0.3 0.5 0.3 0 3
execute if score @s active_particles matches 12 run particle instant_effect ~ ~0.5 ~ 0.5 0.5 0.5 0 5
execute if score @s active_particles matches 19 run particle dripping_obsidian_tear ~ ~0.5 ~ 0.5 1 0.5 0 1
#execute if score @s active_particles matches 21 run particle entity_effect ~ ~ ~ 0 0 0 0.1 1
execute if score @s active_particles matches 24 run particle campfire_cosy_smoke ~ ~ ~ 0.3 0.5 0.3 0.01 1
execute if score @s active_particles matches 33 run particle spore_blossom_air ~ ~0.25 ~ 0.1 0.3 0.1 0 1
execute if score @s active_particles matches 39 run particle sculk_soul ~ ~0.25 ~ 0.4 0.4 0.4 0 1
execute if score @s active_particles matches 36 if score <light_timer> variable matches 0 run particle block_marker light[level=15] ~ ~2.5 ~
execute if score @s active_particles matches 42 run particle cherry_leaves ~ ~1 ~ 0.3 0.4 0.3 0 2

# Specials
execute if score @s active_particles matches 68 if score <blush_timer> variable matches 0 run particle heart ~ ~1.6 ~ 0.3 0.0 0.3 0 1

execute if score @s active_particles matches 79 run function pandamium:impl/particles/custom_trails/storm
execute if score @s active_particles matches 80 run function pandamium:impl/particles/custom_trails/lava_storm
