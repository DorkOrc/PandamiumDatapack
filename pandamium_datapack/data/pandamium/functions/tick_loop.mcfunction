#temporary dupe fix
execute as @e[type=item,nbt={Item:{id:"minecraft:bundle"}}] unless data entity @s {Item:{Count:1b}} at @s run function pandamium:misc/bundle_dupe_fix
execute as @e[type=item,tag=!MC-208666] run function pandamium:misc/bundle-shulker_dupe_fix

execute if predicate pandamium:is_storming run weather rain

function pandamium:misc/toggle_mob_spawning

execute as @a[gamemode=!spectator,scores={active_particles=1..}] at @s anchored eyes run function pandamium:misc/particles/tick
