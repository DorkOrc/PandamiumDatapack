# move item to a fixed location
execute in pandamium:staff_world run item replace block 5 1 0 contents from entity @s player.cursor

# copy out first slot
execute in pandamium:staff_world run data modify block 5 0 0 item set from block 5 1 0 item.components.minecraft:bundle_contents[0]
execute in pandamium:staff_world unless items block 5 0 0 contents *[custom_data~{pandamium:{transient_equippable:{}}}] run return 0

execute in pandamium:staff_world run function pandamium:detect/obtain_transient_equippable_item/apply_fix

# replace item with this modified copy
execute in pandamium:staff_world run data modify block 5 1 0 item.components.minecraft:bundle_contents[0] set from block 5 0 0 item
execute in pandamium:staff_world run item replace entity @s player.cursor from block 5 1 0 contents
