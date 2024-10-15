# context: in pandamium:staff_world

# place or empty the yellow shulker box
setblock 2 0 0 yellow_shulker_box

# copy the items to the yellow shulker box
item replace block 2 0 0 container.0 from entity @s armor.head

# remove the items from the inventory
item replace entity @s armor.head with air

# return the copied items back to the inventory
loot give @s mine 2 0 0 barrier[custom_data={drop_contents:true}]
