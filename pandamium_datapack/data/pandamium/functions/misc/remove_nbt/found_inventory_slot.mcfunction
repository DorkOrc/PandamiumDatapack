data modify storage pandamium:remove_nbt Items[0][] set from storage pandamium:remove_nbt Inventory[-1]

execute if data storage pandamium:remove_nbt Items[0][-1].tag.BlockEntityTag.Items[] run function pandamium:misc/remove_nbt/items/blockentitytag
function pandamium:misc/remove_nbt/items/main

execute store success score nbt_changed temp_1 run data modify storage pandamium:remove_nbt Inventory[-1] set from storage pandamium:remove_nbt Items[0][]
execute if score nbt_changed temp_1 matches 1 run function pandamium:misc/remove_nbt/modify_inventory_slot

data remove storage pandamium:remove_nbt Inventory[-1]
function pandamium:misc/remove_nbt/check_inventory_slot
