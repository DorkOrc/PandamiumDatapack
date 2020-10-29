
execute unless entity @e[tag=map_specific.falling_block,type=falling_block] run summon falling_block 0 16.5 0 {BlockState:{Name:"minecraft:fire"},NoGravity:1b,Time:1,Tags:["map_specific.falling_block"]}

execute unless entity @e[tag=map_specific.falling_block,type=falling_block] positioned -109 71 0 run kill @e[type=item,nbt={Item:{id:"minecraft:netherrack",Count:1b}},distance=..1]
execute unless entity @e[tag=map_specific.falling_block,type=falling_block] run summon falling_block -109 71 0 {BlockState:{Name:"minecraft:netherrack"},NoGravity:1b,Time:1}
execute unless entity @e[tag=map_specific.falling_block,type=falling_block] run summon falling_block -109 72 0 {BlockState:{Name:"minecraft:fire"},NoGravity:1b,Time:1}
execute unless entity @e[tag=map_specific.falling_block,type=falling_block] run summon falling_block -14 67 -66 {BlockState:{Name:"minecraft:fire"},NoGravity:1b,Time:1}
execute unless entity @e[tag=map_specific.falling_block,type=falling_block] run summon falling_block -103 73 7 {BlockState:{Name:"minecraft:red_carpet"},NoGravity:1b,Time:1}
execute unless entity @e[tag=map_specific.falling_block,type=falling_block] run summon falling_block -103 73 -7 {BlockState:{Name:"minecraft:red_carpet"},NoGravity:1b,Time:1}

execute positioned -109 70 0 run tp @a[distance=..2] 64.0 48 -73.0

particle minecraft:witch -136 121 0 5 5 5 0 3 force
particle dust 10 10 10 1.5 -129 119 4 0.15 0.15 0.15 0.2 5 force
