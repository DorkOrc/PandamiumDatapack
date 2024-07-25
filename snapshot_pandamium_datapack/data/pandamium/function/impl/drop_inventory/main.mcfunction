scoreboard players set <dropped_items> variable 0

# just clear all items and XP if the player is in the void.
execute at @s if predicate pandamium:can_take_void_damage run return run function pandamium:impl/drop_inventory/clear_items

# don't try to drop the items if there is no force-loaded chunk in that dimension.
execute at @s unless loaded 29999999 0 29999999 run return 0

# drop the items 0.3 blocks below the eye height, unless sleeping in which case just drop it at their feet.
execute at @s positioned ~ ~0.21 ~ if entity @s[dx=0] positioned as @s rotated ~ 0 anchored eyes positioned ^ ^-0.3 ^ run return run function pandamium:impl/drop_inventory/drop_items
execute at @s run function pandamium:impl/drop_inventory/drop_items
