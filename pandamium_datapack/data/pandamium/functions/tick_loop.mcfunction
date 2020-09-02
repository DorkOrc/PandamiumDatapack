function pandamium:misc/toggle_mob_spawning

execute as @a[gamemode=!spectator] if score @s particle matches 1.. unless data entity @s ActiveEffects[{Id:14b}] run function pandamium:misc/particles/tick
