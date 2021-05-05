execute as @a[scores={death_count=1..,disable_keep_inv=1}] in pandamium:staff_world if blocks 0 0 0 0 0 0 0 0 0 all run function pandamium:misc/drop_inventory_items
scoreboard players reset @a[scores={death_count=1..}] death_count

function pandamium:misc/toggle_mob_spawning

execute as @a[gamemode=!spectator,scores={active_particles=1..}] at @s run function pandamium:misc/particles/tick
