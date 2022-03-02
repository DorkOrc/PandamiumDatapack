# run IN pandamium:staff_world

# If there is not at least 1 empty inventory slot, the items will be deleted without warning. Use the function "pandamium:misc/count_filled_inventory_slots" to check how many slots are available before running this function.

setblock 0 0 0 shulker_box

item replace block 0 0 0 container.0 from entity @s armor.chest
item replace entity @s armor.chest with air

loot give @s mine 0 0 0 air{drop_contents:1b}
