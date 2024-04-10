data merge entity @s {Tags:["seat","spawn_protected"],Duration:20,Radius:0f,Particle:{type:"minecraft:block",block_state:{Name:"minecraft:air"}},CustomName:'{"text":"seat","color":"gray"}'}
tp @s ~ ~ ~ ~ ~
ride @a[tag=sit,limit=1] mount @s
scoreboard players set <sat> variable 1
