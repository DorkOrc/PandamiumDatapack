#this function runs for every item in the inventory, with Inventory[-1] being the current item

data modify storage pandamium:remove_nbt Items[0][] set from storage pandamium:remove_nbt Inventory[-1]

#shulker box
execute if data storage pandamium:remove_nbt Items[0][-1].tag.BlockEntityTag.Items[] run function pandamium:misc/remove_nbt/items/blockentitytag

function pandamium:misc/remove_nbt/items/main

#if the nbt changed, copy it to the player's inventory
execute store success score nbt_changed temp_1 run data modify storage pandamium:remove_nbt Inventory[-1] set from storage pandamium:remove_nbt Items[0][]
execute if score nbt_changed temp_1 matches 1 run function pandamium:misc/remove_nbt/modify_inventory_slot

#get the next item of the inventory
data remove storage pandamium:remove_nbt Inventory[-1]
function pandamium:misc/remove_nbt/check_inventory_slot
