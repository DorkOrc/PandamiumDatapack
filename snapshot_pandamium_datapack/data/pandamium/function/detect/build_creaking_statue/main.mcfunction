scoreboard players set <summoned_entity> variable 0
execute anchored eyes positioned ^ ^ ^ anchored feet summon snowball run function pandamium:detect/build_creaking_statue/as_raycast

execute if score <summoned_entity> variable matches 1 store result score <effect_type> variable if predicate pandamium:coin_flip
execute if score <summoned_entity> variable matches 1 if score <effect_type> variable matches 0 run effect give @s nausea 15 0 true
execute if score <summoned_entity> variable matches 1 if score <effect_type> variable matches 1 run effect give @s blindness 15 0 true
execute if score <summoned_entity> variable matches 1 run advancement grant @s only pandamium:pandamium/mob_heads/vandalism build_creaking_statue

advancement revoke @s only pandamium:detect/build_creaking_statue
