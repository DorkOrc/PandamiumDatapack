execute as @e[type=interaction,tag=entity_remover,predicate=pandamium:is_primary_entity_remover,distance=..20] run function pandamium:detect/attack_entity_remover/as_entity_remover

advancement revoke @s only pandamium:detect/attack_entity_remover
