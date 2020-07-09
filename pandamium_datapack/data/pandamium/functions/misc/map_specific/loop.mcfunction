execute unless entity @e[tag=map_specific.fire,type=falling_block] run summon falling_block -109 72 0 {BlockState:{Name:"minecraft:fire"},NoGravity:1b,Time:1,Tags:["map_specific.fire"]}
execute unless entity @e[tag=map_specific.netherrack,type=falling_block] run summon falling_block -109 71 0 {BlockState:{Name:"minecraft:netherrack"},NoGravity:1b,Time:1,Tags:["map_specific.netherrack"]}
execute positioned -109 71 0 run tp @a[distance=..1] 64.0 48 -73.0

execute unless entity @e[tag=map_specific.alvn_fire,type=falling_block] run summon falling_block -14 67 -66 {BlockState:{Name:"minecraft:fire"},NoGravity:1b,Time:1,Tags:["map_specific.alvn_fire"]}

particle minecraft:witch -136 121 0 5 5 5 0 3 force
