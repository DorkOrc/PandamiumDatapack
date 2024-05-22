# outputs: storage pandamium:temp username

data remove storage pandamium:temp username

execute in pandamium:staff_world run loot replace block 5 0 0 container.0 loot pandamium:utility/head
execute in pandamium:staff_world run data modify storage pandamium:temp username set from block 5 0 0 item.components."minecraft:profile".name
