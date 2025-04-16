tag @s add pandamium.ticking
tag @s add pandamium.custom_entity.brain
tag @s add pandamium.custom_entity.type.trident_loyalty_monitor
data modify entity @s data.custom_entity_type set value "trident_loyalty_monitor"

ride @s mount @e[type=trident,distance=..0.01,tag=pandamium.custom_entity.data.convert.root,limit=1]
