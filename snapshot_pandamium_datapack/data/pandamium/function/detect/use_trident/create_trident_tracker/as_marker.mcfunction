tag @s add pandamium.ticking
tag @s add pandamium.custom_entity.brain
tag @s add pandamium.custom_entity.type.loyalty_trident
data modify entity @s data.custom_entity_type set value "loyalty_trident"

ride @s mount @e[type=trident,distance=..0.01,tag=pandamium.custom_entity.data.convert.root,limit=1]
