#temporary
execute as @e[type=item,nbt={Item:{id:"minecraft:bundle"}}] store result score @s temp_1 run data get entity @s Item.Count
execute as @e[type=item,nbt={Item:{id:"minecraft:bundle"}},scores={temp_1=2..}] at @s run function pandamium:misc/bundle_dupe_fix

function pandamium:misc/toggle_mob_spawning

execute as @a[gamemode=!spectator] if score @s active_particles matches 1.. run function pandamium:misc/particles/tick
