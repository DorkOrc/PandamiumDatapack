data modify storage pandamium:temp items_in set value []
data modify storage pandamium:temp items_in append from block 2 0 0 Items[{components:{"minecraft:custom_data":{pandamium:{jail_item:1b}}}}]
data modify storage pandamium:temp items_out set value []

execute if data storage pandamium:temp items_in[0] run function pandamium:impl/jail_items/restore_lore/restore_lore_from_items_iter

data modify block 2 0 0 Items append from storage pandamium:temp items_out[]
