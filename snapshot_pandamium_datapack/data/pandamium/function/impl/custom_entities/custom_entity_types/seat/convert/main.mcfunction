# as generic interaction entity

data merge entity @s {height:0f,width:0f,Rotation:[0f,90f]}

tag @s add pandamium.custom_entity.type.seat
tag @s add pandamium.custom_entity.root
tag @s add pandamium.custom_entity.data.convert.root
execute at @s summon marker run function pandamium:impl/custom_entities/custom_entity_types/seat/convert/as_marker
tag @s remove pandamium.custom_entity.data.convert.root
