# arguments: slot

# move item to a fixed location
$execute in pandamium:staff_world run item replace block 5 0 0 contents from entity @s $(slot)

execute in pandamium:staff_world run function pandamium:detect/obtain_transient_equippable_item/apply_fix

# replace item with this modified copy
$execute in pandamium:staff_world run item replace entity @s $(slot) from block 5 0 0 contents
