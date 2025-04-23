# arguments: entity_data

loot replace entity @s weapon.offhand loot pandamium:items/custom/squid_cannon
$item modify entity @s weapon.offhand {function:"minecraft:set_components",components:{"minecraft:entity_data":$(entity_data)}}
