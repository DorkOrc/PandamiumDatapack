execute if block ~ ~2 ~ minecraft:carved_pumpkin[facing=south] run summon creaking ~ ~ ~ {Tags:["pandamium.summoned_from_statue"],PersistenceRequired:1b,Rotation:[0f,0f],attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20f}
execute if block ~ ~2 ~ minecraft:carved_pumpkin[facing=west] run summon creaking ~ ~ ~ {Tags:["pandamium.summoned_from_statue"],PersistenceRequired:1b,Rotation:[90f,0f],attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20f}
execute if block ~ ~2 ~ minecraft:carved_pumpkin[facing=north] run summon creaking ~ ~ ~ {Tags:["pandamium.summoned_from_statue"],PersistenceRequired:1b,Rotation:[180f,0f],attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20f}
execute if block ~ ~2 ~ minecraft:carved_pumpkin[facing=east] run summon creaking ~ ~ ~ {Tags:["pandamium.summoned_from_statue"],PersistenceRequired:1b,Rotation:[-90f,0f],attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20f}

scoreboard players set <summoned_entity> variable 1

execute store result score <doTileDrops> variable run gamerule doTileDrops
gamerule doTileDrops false
fill ~ ~ ~ ~ ~2 ~ air destroy
execute if score <doTileDrops> variable matches 1 run gamerule doTileDrops true

playsound minecraft:entity.creaking.spawn block @a[distance=..32] ~ ~ ~ 1 2
playsound minecraft:entity.creaking.spawn block @a[distance=..32] ~ ~ ~ 1 0
execute positioned ~ ~1 ~ run function pandamium:utils/get/position
data modify storage pandamium:local functions."pandamium:detect/build_creaking_statue/create_particles".position set from storage pandamium:temp position
function pandamium:detect/build_creaking_statue/create_particles with storage pandamium:local functions."pandamium:detect/build_creaking_statue/create_particles"
