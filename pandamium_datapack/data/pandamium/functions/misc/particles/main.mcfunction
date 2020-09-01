execute if score @s particle matches 8 at @s run particle minecraft:heart ~ ~0.5 ~ 0.3 1 0.3 0 2 force @a[distance=0.1..]
execute if score @s particle matches 8 at @s run particle minecraft:heart ~ ~ ~ 0.3 1 0.3 0 1 force @s

execute if score @s particle matches 9 at @s run particle minecraft:angry_villager ~ ~0.5 ~ 0.3 1 0.3 0 2 force @a[distance=0.1..]
execute if score @s particle matches 9 at @s run particle minecraft:angry_villager ~ ~ ~ 0.3 1 0.3 0 1 force @s

execute if score @s particle matches 10 at @s run particle minecraft:witch ~ ~0.5 ~ 0.3 1 0.3 0 3 force
execute if score @s particle matches 12 at @s run particle minecraft:instant_effect ~ ~0.5 ~ 0.5 1 0.5 0 5 force
execute if score @s particle matches 19 at @s run particle minecraft:dripping_obsidian_tear ~ ~0.5 ~ 0.5 1 0.5 0 1 force

execute if score @s particle matches 24 at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.3 1 0.3 0.01 1 force @s
