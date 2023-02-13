scoreboard players set <dropped_items> variable 0
execute at @s if predicate pandamium:can_take_void_damage run function pandamium:misc/drop_inventory/clear_items
execute if score <dropped_items> variable matches 0 in pandamium:staff_world if loaded 0 0 0 run function pandamium:misc/drop_inventory/drop_items
