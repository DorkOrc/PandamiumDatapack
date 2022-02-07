# Spawn Effects
execute as @a[predicate=pandamium:in_spawn] run function pandamium:misc/player_regions/spawn_effects
execute as @a[predicate=!pandamium:in_spawn] run attribute @s generic.attack_damage base set 1

# Nether Spawn Protection
gamerule sendCommandFeedback false
gamemode survival @a[gamemode=adventure,predicate=!pandamium:in_spawn]
gamemode adventure @a[gamemode=survival,predicate=pandamium:in_spawn]
gamerule sendCommandFeedback true

# Staff World Effects
execute in pandamium:staff_world as @a[x=0] run function pandamium:misc/player_regions/staff_world_effects
