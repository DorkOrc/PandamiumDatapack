# Spawn Effects
execute as @a[predicate=pandamium:in_spawn] run function pandamium:player/regions/spawn_effects
execute as @a[predicate=!pandamium:in_spawn] run attribute @s minecraft:generic.attack_damage base set 1
execute as @a[predicate=!pandamium:in_spawn] run attribute @s minecraft:player.entity_interaction_range base set 3
execute as @a[predicate=!pandamium:in_spawn] run attribute @s minecraft:generic.fall_damage_multiplier base set 1

# temp_1 ==> in a protected region
execute as @a store success score @s temp_1 if entity @s[predicate=pandamium:in_spawn]
execute if score <enderman_farm_warp.protected> global matches 1 in the_end if entity @a[x=0,limit=1] run function pandamium:impl/enderman_farm_protection/loop with storage pandamium:global enderman_farm_warp

# Nether Spawn Protection
gamerule sendCommandFeedback false
gamemode survival @a[gamemode=adventure,scores={temp_1=0}]
gamemode adventure @a[gamemode=survival,scores={temp_1=1}]
gamerule sendCommandFeedback true

# Staff World Effects
execute in pandamium:staff_world as @a[x=0] run function pandamium:player/regions/staff_world_effects
