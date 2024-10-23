execute if block ~ ~2 ~ minecraft:carved_pumpkin[facing=south] run summon creaking ~ ~ ~ {Tags:["pandamium.summoned_from_statue"],PersistenceRequired:1b,Rotation:[0f,0f],attributes:[{id:"minecraft:max_health",base:40.0d}],Health:40f}
execute if block ~ ~2 ~ minecraft:carved_pumpkin[facing=west] run summon creaking ~ ~ ~ {Tags:["pandamium.summoned_from_statue"],PersistenceRequired:1b,Rotation:[90f,0f],attributes:[{id:"minecraft:max_health",base:40.0d}],Health:40f}
execute if block ~ ~2 ~ minecraft:carved_pumpkin[facing=north] run summon creaking ~ ~ ~ {Tags:["pandamium.summoned_from_statue"],PersistenceRequired:1b,Rotation:[180f,0f],attributes:[{id:"minecraft:max_health",base:40.0d}],Health:40f}
execute if block ~ ~2 ~ minecraft:carved_pumpkin[facing=east] run summon creaking ~ ~ ~ {Tags:["pandamium.summoned_from_statue"],PersistenceRequired:1b,Rotation:[-90f,0f],attributes:[{id:"minecraft:max_health",base:40.0d}],Health:40f}

scoreboard players set <summoned_entity> variable 1

execute store result score <doTileDrops> variable run gamerule doTileDrops
gamerule doTileDrops false
fill ~ ~ ~ ~ ~2 ~ air destroy
execute if score <doTileDrops> variable matches 1 run gamerule doTileDrops true

playsound minecraft:entity.creaking.spawn block @a[distance=..32] ~ ~ ~ 1 2
