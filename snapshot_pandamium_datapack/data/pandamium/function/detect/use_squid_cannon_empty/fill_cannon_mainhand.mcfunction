# arguments: entity_data

loot replace entity @s weapon.mainhand loot pandamium:items/custom/squid_cannon
$item modify entity @s weapon.mainhand {function:"minecraft:set_components",components:{"minecraft:entity_data":$(entity_data)}}
execute if data storage pandamium:local functions."pandamium:detect/use_squid_cannon_empty/*".entity_data{id:"minecraft:glow_squid"} run item modify entity @s weapon.mainhand {function:"minecraft:set_components",components:{"minecraft:item_model":"minecraft:glow_squid_spawn_egg"}}
