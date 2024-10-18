execute if block ~ ~2 ~ minecraft:carved_pumpkin[facing=south] run summon illusioner ~ ~ ~ {Rotation:[0f,0f]}
execute if block ~ ~2 ~ minecraft:carved_pumpkin[facing=west] run summon illusioner ~ ~ ~ {Rotation:[90f,0f]}
execute if block ~ ~2 ~ minecraft:carved_pumpkin[facing=north] run summon illusioner ~ ~ ~ {Rotation:[180f,0f]}
execute if block ~ ~2 ~ minecraft:carved_pumpkin[facing=east] run summon illusioner ~ ~ ~ {Rotation:[-90f,0f]}

execute store result score <doTileDrops> variable run gamerule doTileDrops
gamerule doTileDrops false
fill ~ ~ ~ ~ ~2 ~ air destroy
execute if score <doTileDrops> variable matches 1 run gamerule doTileDrops true

playsound minecraft:entity.illusioner.cast_spell block @a[distance=..32] ~ ~ ~ 1 2
