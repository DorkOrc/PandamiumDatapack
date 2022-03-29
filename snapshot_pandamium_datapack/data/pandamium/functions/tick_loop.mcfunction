execute if data storage pandamium:queue queue[0] run function pandamium:misc/queue/iter

execute as @a[scores={detect.die=1..}] run function pandamium:misc/detect/die

function pandamium:misc/toggle_mob_spawning

execute as @a[gamemode=!spectator,scores={active_particles=1..}] unless score @s hidden matches 1.. at @s run function pandamium:misc/particles/tick_as_player
