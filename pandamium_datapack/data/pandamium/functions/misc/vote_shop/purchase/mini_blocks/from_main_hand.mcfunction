data modify storage pandamium:temp NBT set from entity @s
data remove storage pandamium:temp item
data modify storage pandamium:temp item set from storage pandamium:temp NBT.SelectedItem

function pandamium:misc/vote_shop/purchase/mini_blocks/from_storage
