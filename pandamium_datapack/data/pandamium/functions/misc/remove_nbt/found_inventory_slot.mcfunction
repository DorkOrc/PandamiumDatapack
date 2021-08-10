#if the nbt changed, copy it to the player's inventory
execute store success score <nbt_changed> temp run data modify storage pandamium:remove_nbt Inventory2[-1] set from storage pandamium:remove_nbt Inventory[-1]

execute if score <nbt_changed> temp matches 1 run function pandamium:misc/remove_nbt/modify_inventory_slot

#get the next item of the inventory
data remove storage pandamium:remove_nbt Inventory[-1]
data remove storage pandamium:remove_nbt Inventory2[-1]
function pandamium:misc/remove_nbt/check_inventory_slot
