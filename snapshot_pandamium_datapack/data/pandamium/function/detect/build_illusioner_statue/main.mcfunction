scoreboard players set <summoned_entity> variable 0

tag @s add source
execute anchored eyes positioned ^ ^ ^ anchored feet summon snowball run function pandamium:detect/build_illusioner_statue/as_raycast
tag @s remove source

execute if score <summoned_entity> variable matches 1 anchored eyes run particle minecraft:witch ^ ^ ^ 0.1 0.5 0.1 1 50

execute if score <summoned_entity> variable matches 1 run advancement grant @s only pandamium:pandamium/mob_heads/vandalism build_illusioner_statue

advancement revoke @s only pandamium:detect/build_illusioner_statue
