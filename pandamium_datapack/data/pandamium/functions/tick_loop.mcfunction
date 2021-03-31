function pandamium:misc/toggle_mob_spawning

execute as @a[gamemode=!spectator,scores={active_particles=1..}] at @s run function pandamium:misc/particles/tick
