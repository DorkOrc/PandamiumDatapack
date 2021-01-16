scoreboard players set nbt_removed_in_total temp_1 0

data modify storage pandamium:remove_nbt Items[0][] set from storage pandamium:remove_nbt Inventory[-1]

execute if data storage pandamium:remove_nbt Items[0][-1].tag.BlockEntityTag.Items[] run function pandamium:misc/remove_nbt/items/blockentitytag
function pandamium:misc/remove_nbt/items/main

execute unless score nbt_removed_in_total temp_1 matches 0 run function pandamium:misc/remove_nbt/modify_inventory_slot
data modify storage pandamium:remove_nbt Items[0] set value []


data remove storage pandamium:remove_nbt Inventory[-1]
function pandamium:misc/remove_nbt/check_inventory_slot
