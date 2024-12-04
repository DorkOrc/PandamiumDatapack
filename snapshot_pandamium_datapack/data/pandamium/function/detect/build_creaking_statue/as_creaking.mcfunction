execute if block ~ ~2 ~ minecraft:carved_pumpkin[facing=south] run data merge entity @s {Tags:["pandamium.summoned_from_statue"],PersistenceRequired:1b,Rotation:[0f,0f],attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20f}
execute if block ~ ~2 ~ minecraft:carved_pumpkin[facing=west] run data merge entity @s {Tags:["pandamium.summoned_from_statue"],PersistenceRequired:1b,Rotation:[90f,0f],attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20f}
execute if block ~ ~2 ~ minecraft:carved_pumpkin[facing=north] run data merge entity @s {Tags:["pandamium.summoned_from_statue"],PersistenceRequired:1b,Rotation:[180f,0f],attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20f}
execute if block ~ ~2 ~ minecraft:carved_pumpkin[facing=east] run data merge entity @s {Tags:["pandamium.summoned_from_statue"],PersistenceRequired:1b,Rotation:[-90f,0f],attributes:[{id:"minecraft:max_health",base:20.0d}],Health:20f}

execute if block ~ ~1 ~ minecraft:creaking_heart{components:{"minecraft:custom_data":{pandamium:{unnatural:true}}}} run tag @s add unnatural
