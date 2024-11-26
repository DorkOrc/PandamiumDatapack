data modify entity @s data.custom_entity_type set value "seat"

tag @s add pandamium.custom_entity.type.seat
tag @s add pandamium.custom_entity.brain
tag @s add pandamium.ticking

ride @s mount @n[distance=..1,type=interaction,tag=pandamium.custom_entity.data.convert.root]
