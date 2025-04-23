advancement revoke @s only pandamium:detect/use_squid_cannon

data remove storage pandamium:local functions."pandamium:detect/use_squid_cannon/*".entity_data
execute if items entity @s weapon.mainhand *[custom_data~{pandamium:{id:"squid_cannon"}}] run data modify storage pandamium:local functions."pandamium:detect/use_squid_cannon/*".entity_data set from entity @s SelectedItem.components.minecraft:entity_data
execute unless data storage pandamium:local functions."pandamium:detect/use_squid_cannon/*".entity_data if items entity @s weapon.offhand *[custom_data~{pandamium:{id:"squid_cannon"}}] run data modify storage pandamium:local functions."pandamium:detect/use_squid_cannon/*".entity_data set from entity @s equipment.offhand.components.minecraft:entity_data

tag @s add pandamium.squid_cannon.player
execute store success score <ctrl> variable if predicate pandamium:player/input/sprint
execute if data storage pandamium:local functions."pandamium:detect/use_squid_cannon/*".entity_data{id:"minecraft:squid"} anchored eyes positioned ^ ^ ^1 summon squid run function pandamium:detect/use_squid_cannon/as_squid
execute if data storage pandamium:local functions."pandamium:detect/use_squid_cannon/*".entity_data{id:"minecraft:glow_squid"} anchored eyes positioned ^ ^ ^1 summon glow_squid run function pandamium:detect/use_squid_cannon/as_squid
tag @s remove pandamium.squid_cannon.player

playsound minecraft:entity.squid.squirt master @a[distance=..16] ~ ~ ~ 0.25 2

execute if items entity @s weapon.mainhand *[custom_data~{pandamium:{id:"squid_cannon"}}] run return run loot replace entity @s weapon.mainhand loot pandamium:items/custom/squid_cannon_empty
execute if items entity @s weapon.offhand *[custom_data~{pandamium:{id:"squid_cannon"}}] run return run loot replace entity @s weapon.offhand loot pandamium:items/custom/squid_cannon_empty
