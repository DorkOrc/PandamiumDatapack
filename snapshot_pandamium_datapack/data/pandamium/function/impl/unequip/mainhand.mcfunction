# context: in pandamium:staff_world

# place or empty the yellow shulker box
setblock 2 0 0 yellow_shulker_box{lock:{count:{max:-1}}}

# copy the items to the yellow shulker box
item replace block 2 0 0 container.0 from entity @s weapon.mainhand

# remove the items from the inventory, and replace the main hand with a dummy item
item replace entity @s weapon.mainhand with barrier[custom_data={pandamium:{clear:1b}},max_stack_size=1]

# return the copied items back to the inventory
loot give @s mine 2 0 0 barrier[custom_data={drop_contents:true}]

# remove the dummy item
item replace entity @s weapon.mainhand with air
