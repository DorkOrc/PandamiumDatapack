execute if entity @s[tag=pandamium.trap_triggered] run return run function pandamium:detect/interact_with_trapped_zombie_horse/normalise_zombie_horse

# cancel if baby
execute store result score <age> variable run data get entity @s Age
execute if score <age> variable matches ..-1 run return run tag @s remove pandamium.trapped

# trap
tag @s add pandamium.trap_triggered
attribute @s minecraft:movement_speed modifier add pandamium:undead_rider_buff 0.25 add_multiplied_base
data modify entity @s Tame set value 1b
execute on passengers run ride @s dismount

tag @s add this
execute if biome ~ ~ ~ #pandamium:spawns_husks positioned ~ ~1000 ~ summon husk positioned ~ ~-1000 ~ run function pandamium:detect/interact_with_trapped_zombie_horse/as_undead_rider
execute unless biome ~ ~ ~ #pandamium:spawns_husks positioned ~ ~1000 ~ summon zombie positioned ~ ~-1000 ~ run function pandamium:detect/interact_with_trapped_zombie_horse/as_undead_rider
tag @s remove this

particle poof ~ ~1 ~ 1 1 1 0 50
