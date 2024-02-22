tag @s add christmas_mob

attribute @s minecraft:generic.scale base set 0.75
attribute @s minecraft:generic.attack_damage base set 0.25
attribute @s minecraft:generic.max_health base set 30
data modify entity @s Health set value 30.0f

data modify entity @s ArmorDropChances[3] set value 0.0f
data modify entity @s CanPickUpLoot set value 0b
data modify entity @s DeathLootTable set value "pandamium:entities/christmas_mob"

function pandamium:impl/christmas_mobs/set_head

loot replace entity @s weapon.mainhand loot pandamium:gameplay/christmas_mob_weapon
