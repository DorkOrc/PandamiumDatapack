execute if entity @s[tag=pandamium.trap_triggered] unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{passenger:{type:"#minecraft:zombies"}}} run return run function pandamium:detect/interact_with_trapped_zombie_horse/normalise_zombie_horse

tag @s add pandamium.trap_triggered

execute on passengers run ride @s dismount

tag @s add this
execute if biome ~ ~ ~ #pandamium:spawns_husks positioned ~ ~1000 ~ summon husk positioned ~ ~-1000 ~ run function pandamium:detect/interact_with_trapped_zombie_horse/as_undead_rider
execute unless biome ~ ~ ~ #pandamium:spawns_husks positioned ~ ~1000 ~ summon zombie_villager positioned ~ ~-1000 ~ run function pandamium:detect/interact_with_trapped_zombie_horse/as_undead_rider
tag @s remove this

attribute @s minecraft:movement_speed modifier add pandamium:undead_rider_buff 0.5 add_multiplied_base

data modify entity @s Tame set value 1b
