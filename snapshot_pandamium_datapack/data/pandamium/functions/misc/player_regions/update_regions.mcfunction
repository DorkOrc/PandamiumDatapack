# Spawn Effects
execute as @a[predicate=pandamium:in_spawn] run function pandamium:misc/player_regions/spawn_effects
execute as @a[predicate=!pandamium:in_spawn] run attribute @s generic.attack_damage base set 1

execute as @a at @s store success score @s temp_1 if predicate pandamium:in_spawn
execute if score <do_enderman_farm_protection> global matches 1 in the_end if entity @a[x=0,limit=1] as @e[type=marker,x=0,tag=enderman_farm_protection] at @s run function pandamium:misc/enderman_farm/protection/loop

# Nether Spawn Protection
gamerule sendCommandFeedback false
gamemode survival @a[gamemode=adventure,scores={temp_1=0}]
gamemode adventure @a[gamemode=survival,scores={temp_1=1}]
gamerule sendCommandFeedback true

# Staff World Effects
execute in pandamium:staff_world as @a[x=0] run function pandamium:misc/player_regions/staff_world_effects
