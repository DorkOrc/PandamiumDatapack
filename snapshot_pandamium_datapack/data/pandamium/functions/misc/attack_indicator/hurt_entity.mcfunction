data modify storage pandamium:temp attack_indicator.targets set value []
execute in pandamium:staff_world run setblock 0 0 0 barrel
execute in pandamium:staff_world run item replace block 0 0 0 container.0 with stone
tag @s add player
execute unless score @s disable_attack_indicator matches 1 at @s as @e[distance=..64,tag=!player,sort=furthest] run function pandamium:misc/attack_indicator/check_entity
tag @s remove player
title @s actionbar {"nbt":"attack_indicator.targets[]","storage":"pandamium:temp","interpret":true,"separator":{"text":" | ","color":"gray"}}
