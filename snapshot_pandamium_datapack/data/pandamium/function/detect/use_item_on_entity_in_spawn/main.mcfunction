execute store success score <store_name> variable if entity @s[advancements={pandamium:detect/use_item_on_entity_in_spawn={used_name_tag=true}},predicate=pandamium:player/min_staff_perms/senior_moderator]
execute as @e[tag=spawn_protected,distance=..15] run function pandamium:detect/use_item_on_entity_in_spawn/restore_data

advancement revoke @s only pandamium:detect/use_item_on_entity_in_spawn
