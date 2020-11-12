#temporary
execute as @e[type=item,nbt={Item:{id:"minecraft:bundle"}}] unless data entity @s {Item:{Count:1b}} at @s run function pandamium:misc/bundle_dupe_fix

function pandamium:misc/toggle_mob_spawning

execute as @a[gamemode=!spectator] if score @s active_particles matches 1.. run function pandamium:misc/particles/tick
