tp @s ~ ~ ~
scoreboard players set <hit> variable 0
execute if score <hit> variable matches 0 if block ~ ~ ~ #all_signs run function pandamium:impl/raycast/block_hitboxes/signs/main
execute if score <hit> variable matches 0 if block ~ ~ ~ #pandamium:chests run function pandamium:impl/raycast/block_hitboxes/chests/main
execute if score <hit> variable matches 0 if block ~ ~ ~ brewing_stand run function pandamium:impl/raycast/block_hitboxes/brewing_stand
execute if score <hit> variable matches 0 if block ~ ~ ~ #campfires align xyz positioned ~ ~ ~ if entity @s[dx=0] align xyz positioned ~ ~-0.5625 ~ if entity @s[dx=0] run scoreboard players set <hit> variable 1
execute if score <hit> variable matches 0 if block ~ ~ ~ #slabs run function pandamium:impl/raycast/block_hitboxes/slabs
