data merge entity @s {Tags:["seat","spawn_protected"],Duration:20,Radius:0f,Particle:"block air",CustomName:'{"text":"seat","color":"gray"}'}
tp @s ~ ~ ~ ~ ~
ride @a[tag=sit,limit=1,sort=nearest] mount @s
