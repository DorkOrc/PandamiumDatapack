function pandamium:misc/toggle_mob_spawning

execute as @a[gamemode=!spectator] if score @s active_particles matches 1.. run function pandamium:misc/particles/tick

execute as @e[type=wither] run function pandamium:misc/wither/tick
