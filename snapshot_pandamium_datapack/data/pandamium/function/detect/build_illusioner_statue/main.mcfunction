scoreboard players set <summoned_entity> variable 0
execute anchored eyes positioned ^ ^ ^ anchored feet summon snowball run function pandamium:detect/build_illusioner_statue/as_raycast

execute if score <summoned_entity> variable matches 1 run advancement grant @s only pandamium:pandamium/mob_heads/vandalism build_illusioner_statue

advancement revoke @s only pandamium:detect/build_illusioner_statue
