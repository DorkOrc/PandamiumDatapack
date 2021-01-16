data modify storage pandamium:remove_nbt Items append from storage pandamium:remove_nbt Items[-2][-1].tag.Items
data modify storage pandamium:remove_nbt Items append value []

function pandamium:misc/remove_nbt/items/check_item

data modify storage pandamium:remove_nbt Items[-4][-1].tag.Items set from storage pandamium:remove_nbt Items[-1]
data remove storage pandamium:remove_nbt Items[-1]
data remove storage pandamium:remove_nbt Items[-1]
