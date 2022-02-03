scoreboard players set @a in_spawn 0
execute in the_nether run scoreboard players set @a[x=-512,y=0,z=-512,dx=1024,dy=256,dz=1024] in_spawn 1
execute in overworld run scoreboard players set @a[x=-512,y=-64,z=-512,dx=1024,dy=384,dz=1024] in_spawn 1

# Spawn Effects
execute as @a[scores={in_spawn=1}] run function pandamium:misc/player_regions/spawn_effects
execute as @a[scores={in_spawn=0}] run attribute @s generic.attack_damage base set 1

# Nether Spawn Protection
gamerule sendCommandFeedback false
gamemode survival @a[gamemode=adventure,scores={in_spawn=0}]
gamemode adventure @a[gamemode=survival,scores={in_spawn=1}]
gamerule sendCommandFeedback true

# Staff World Effects
execute in pandamium:staff_world as @a[x=0] run function pandamium:misc/player_regions/staff_world_effects
