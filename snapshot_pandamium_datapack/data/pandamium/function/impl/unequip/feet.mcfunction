# context: in pandamium:staff_world

# place or empty the yellow shulker box
setblock 2 0 0 yellow_shulker_box

# copy the items to the yellow shulker box
scoreboard players set <transient_equippable.modifying> global 1
execute if items entity @s armor.feet *[custom_data~{pandamium:{transient_equippable:{}}}] run function pandamium:detect/obtain_transient_equippable_item/fix_item {slot:"armor.feet"}
scoreboard players set <transient_equippable.modifying> global 0

item replace block 2 0 0 container.0 from entity @s armor.feet

# remove the items from the inventory
item replace entity @s armor.feet with air

# return the copied items back to the inventory
loot give @s mine 2 0 0 barrier[custom_data={drop_contents:true}]
