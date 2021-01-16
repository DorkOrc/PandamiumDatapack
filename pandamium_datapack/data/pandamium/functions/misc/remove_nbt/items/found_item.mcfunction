function pandamium:misc/remove_nbt/items/main

#save edited item, and get next item
data modify storage pandamium:remove_nbt Items[-1] prepend from storage pandamium:remove_nbt Items[-2][-1]
data remove storage pandamium:remove_nbt Items[-2][-1]
function pandamium:misc/remove_nbt/items/check_item
