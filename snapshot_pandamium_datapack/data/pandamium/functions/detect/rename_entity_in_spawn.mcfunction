execute unless score @s staff_perms matches 3.. at @s as @e[tag=spawn_protected,distance=..15] run function pandamium:detect/rename_entity_in_spawn/reset_name
execute if score @s staff_perms matches 3.. at @s as @e[tag=spawn_protected,distance=..15] run function pandamium:detect/rename_entity_in_spawn/store_name

advancement revoke @s only pandamium:detect/rename_entity_in_spawn
