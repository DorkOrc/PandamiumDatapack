execute if block ~ ~2 ~ minecraft:carved_pumpkin[facing=south] summon illusioner run data merge entity @s {Tags:["pandamium.summoned_from_statue"],PersistenceRequired:1b,Rotation:[0f,0f],CanJoinRaid:0b}
execute if block ~ ~2 ~ minecraft:carved_pumpkin[facing=west] summon illusioner run data merge entity @s {Tags:["pandamium.summoned_from_statue"],PersistenceRequired:1b,Rotation:[90f,0f],CanJoinRaid:0b}
execute if block ~ ~2 ~ minecraft:carved_pumpkin[facing=north] summon illusioner run data merge entity @s {Tags:["pandamium.summoned_from_statue"],PersistenceRequired:1b,Rotation:[180f,0f],CanJoinRaid:0b}
execute if block ~ ~2 ~ minecraft:carved_pumpkin[facing=east] summon illusioner run data merge entity @s {Tags:["pandamium.summoned_from_statue"],PersistenceRequired:1b,Rotation:[-90f,0f],CanJoinRaid:0b}

scoreboard players set <summoned_entity> variable 1

damage @a[tag=source,limit=1] 10 minecraft:indirect_magic by @n[type=illusioner,distance=..0.01]

execute store result score <doTileDrops> variable run gamerule doTileDrops
gamerule doTileDrops false
fill ~ ~ ~ ~ ~2 ~ air destroy
execute if score <doTileDrops> variable matches 1 run gamerule doTileDrops true

playsound minecraft:entity.illusioner.cast_spell block @a[distance=..32] ~ ~ ~ 1 2
