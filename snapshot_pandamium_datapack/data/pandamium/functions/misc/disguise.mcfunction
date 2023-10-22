# arguments: entity_type, nbt

execute if entity 9c184f3a-39ea-4f23-b7f5-7b23aeac6e17 run return run tellraw @s [{"text":"[Disguise]","color":"dark_red"},{"text":" An entity with uuid 9c184f3a-39ea-4f23-b7f5-7b23aeac6e17 already exists!","color":"red"}]
execute unless entity @s[name="DorkOrc",scores={hidden=1..}] run return run tellraw @s [{"text":"[Disguise]","color":"dark_red"},{"text":" You are not a hidden DorkOrc!","color":"red"}]

$data modify storage pandamium:temp entity_type set value '$(entity_type)'
execute if data storage pandamium:temp {entity_type:"ender_dragon"} run return run tellraw @s [{"text":"[Disguise]","color":"dark_red"},{"text":" No!","color":"red"}]
execute if data storage pandamium:temp {entity_type:"minecraft:ender_dragon"} run return run tellraw @s [{"text":"[Disguise]","color":"dark_red"},{"text":" No!","color":"red"}]
execute if data storage pandamium:temp {entity_type:"item"} run return run tellraw @s [{"text":"[Disguise]","color":"dark_red"},{"text":" No!","color":"red"}]
execute if data storage pandamium:temp {entity_type:"minecraft:item"} run return run tellraw @s [{"text":"[Disguise]","color":"dark_red"},{"text":" No!","color":"red"}]

$summon $(entity_type) ~ ~ ~ {UUID:[I;-1676128454,971656995,-1208648925,-1364431337],Team:"no_collision",NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b}
$data merge entity 9c184f3a-39ea-4f23-b7f5-7b23aeac6e17 $(nbt)
