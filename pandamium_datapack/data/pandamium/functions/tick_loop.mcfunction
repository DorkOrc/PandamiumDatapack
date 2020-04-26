function pandamium:misc/toggle_mob_spawning

execute as @a[gamemode=!spectator] if score @s particles matches 1.. run function pandamium:misc/create_particles
