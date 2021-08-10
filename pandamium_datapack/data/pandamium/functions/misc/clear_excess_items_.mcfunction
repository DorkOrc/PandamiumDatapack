execute in pandamium:staff_world run data modify entity @e[x=0,type=armor_stand,tag=clear_excess_items,limit=1] ArmorItems[0] set from entity @s Item
execute in pandamium:staff_world as @e[x=0,type=armor_stand,tag=clear_excess_items,limit=1] store success score <item_clear_excluded> temp if predicate pandamium:feet_slot_is_item_clear_excluded
execute store result score <age> temp run data get entity @s Age
execute if score <item_clear_excluded> temp matches 0 if score <age> temp matches 300.. run kill
