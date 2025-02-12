data modify storage pandamium:local functions."pandamium:impl/attack_indicator/*".targets set value []
execute in pandamium:staff_world run item replace block 1 0 0 container.0 with stone
tag @s add player
execute unless score @s disable_attack_indicator matches 1 at @s as @e[distance=..64,tag=!player,sort=nearest] run function pandamium:impl/attack_indicator/check_entity
tag @s remove player
title @s actionbar {nbt:"functions.'pandamium:impl/attack_indicator/*'.targets[]",storage:"pandamium:local",interpret:true,separator:{text:" | ",color:"gray"}}

data remove storage pandamium:local functions."pandamium:impl/attack_indicator/*".entity_data
