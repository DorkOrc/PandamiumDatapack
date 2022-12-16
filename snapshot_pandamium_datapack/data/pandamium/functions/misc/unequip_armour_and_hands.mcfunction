# run IN pandamium:staff_world

# If there is not at least 6 empty inventory slots (assume mainhand slot is filled), the items will be deleted without warning. Use the function "pandamium:misc/count_filled_inventory_slots" to check how many slots are available before running this function.

setblock 0 0 0 yellow_shulker_box

item replace block 0 0 0 container.0 from entity @s armor.feet
item replace block 0 0 0 container.1 from entity @s armor.legs
item replace block 0 0 0 container.2 from entity @s armor.chest
item replace block 0 0 0 container.3 from entity @s armor.head
item replace block 0 0 0 container.4 from entity @s weapon.mainhand
item replace block 0 0 0 container.5 from entity @s weapon.offhand

item replace entity @s armor.feet with air
item replace entity @s armor.legs with air
item replace entity @s armor.chest with air
item replace entity @s armor.head with air
item replace entity @s weapon.mainhand with barrier{pandamium:{clear:1b}}
item replace entity @s weapon.offhand with air

loot give @s mine 0 0 0 air{drop_contents:1b}

item replace entity @s weapon.mainhand with air
