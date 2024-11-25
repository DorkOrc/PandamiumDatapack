# as controller phantom entity

execute on vehicle run tag @s remove pandamium.flying_eyeball
execute on vehicle run tag @s add pandamium.custom_entity.type.flying_eyeball
execute on vehicle run tag @s add pandamium.custom_entity.controller

execute on passengers run tag @s remove pandamium.flying_eyeball
execute on passengers run tag @s add pandamium.custom_entity.type.flying_eyeball

tag @s remove pandamium.flying_eyeball
tag @s remove pandamium.flying_eyeball.root
tag @s remove pandamium.ticking
tag @s add pandamium.custom_entity.type.flying_eyeball
tag @s add pandamium.custom_entity.root
tag @s add pandamium.custom_entity.data.convert.root
execute at @s summon marker run function pandamium:impl/custom_entities/custom_entity_types/flying_eyeball/convert_legacy/as_marker
tag @s remove pandamium.custom_entity.data.convert.root
