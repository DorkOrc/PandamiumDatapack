# as generic interaction entity

execute if entity @s[tag=pandamium.custom_entity.type.seat] run return 0

data merge entity @s {height:0f,width:0f,Rotation:[0f,90f]}

scoreboard players set <id> variable -1
execute on passengers if entity @s[type=player] store result score <id> variable run scoreboard players get @s id

tag @s add pandamium.custom_entity.type.seat
tag @s add pandamium.custom_entity.root
tag @s add pandamium.custom_entity.data.convert.root
execute at @s summon marker run function pandamium:impl/custom_entities/custom_entity_types/seat/convert/as_marker
tag @s remove pandamium.custom_entity.data.convert.root
