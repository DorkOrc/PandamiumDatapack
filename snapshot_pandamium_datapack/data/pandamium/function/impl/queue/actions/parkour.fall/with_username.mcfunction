# arguments: username

$summon area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:block",block_state:{Name:"minecraft:air"}},CustomName:'{"text":"☠ ","extra":[{"text":"$(username)","bold":true}," ☠"],"color":"red"}',CustomNameVisible:1b,WaitTime:12000,Tags:["parkour.death_point","spawn_protected"]}
execute store result score <nearby_death_points> variable if entity @e[type=area_effect_cloud,tag=parkour.death_point,distance=..10]
execute if score <nearby_death_points> variable matches 21.. run kill @e[type=area_effect_cloud,tag=parkour.death_point,distance=..10,sort=random,limit=1]

execute if score @s parkour.checkpoint matches 300 run particle minecraft:block_crumble{block_state:{Name:"pale_oak_log"}} ~ ~1 ~ 0.3 1 0.3 0 100
execute if score @s parkour.checkpoint matches 300 run playsound minecraft:entity.creaking.activate player @a[distance=..15] ~ ~ ~ 0.5 1
execute if score @s parkour.checkpoint matches 304 run particle minecraft:lava ~ ~ ~ 0 0 0 1 10
