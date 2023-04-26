#data remove block 0 0 0 Items[{tag:{pandamium:{jail_item:1b}}}].tag.display.Lore
#data remove block 0 0 0 Items[{tag:{pandamium:{jail_item:2b}}}].tag.display
#data remove block 0 0 0 Items[].tag.pandamium.jail_item

data modify storage pandamium:temp ItemsIn set value []
data modify storage pandamium:temp ItemsIn set from block 0 0 0 Items
data modify storage pandamium:temp ItemsOut set value []

execute if data storage pandamium:temp ItemsIn[0] run function pandamium:impl/jail_items/restore_lore/restore_lore_from_items_iter

data modify block 0 0 0 Items set from storage pandamium:temp ItemsOut
