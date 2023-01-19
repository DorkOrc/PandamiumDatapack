execute positioned ~ ~-0.25 ~ if block ~ ~ ~ #stairs[half=bottom,facing=north] align xyz run tp ~0.5 ~0.5 ~0.7
execute positioned ~ ~-0.25 ~ if block ~ ~ ~ #stairs[half=bottom,facing=east] align xyz run tp ~0.3 ~0.5 ~0.5
execute positioned ~ ~-0.25 ~ if block ~ ~ ~ #stairs[half=bottom,facing=south] align xyz run tp ~0.5 ~0.5 ~0.3
execute positioned ~ ~-0.25 ~ if block ~ ~ ~ #stairs[half=bottom,facing=west] align xyz run tp ~0.7 ~0.5 ~0.5

execute positioned as @s run summon area_effect_cloud ~ ~-0.5 ~ {Tags:["seat"],Duration:40,Radius:0f,Particle:"block air",CustomName:'{"text":"seat","color":"gray"}'}
execute positioned as @s positioned ~ ~-0.5 ~ run ride @s mount @e[type=area_effect_cloud,distance=..0.1,tag=seat,limit=1,sort=nearest]
