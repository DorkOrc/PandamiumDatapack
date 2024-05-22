data remove storage pandamium:temp items_in[-1].components."minecraft:lore"
execute if data storage pandamium:temp items_in[-1].components."minecraft:custom_data".pandamium.stored_lore run data modify storage pandamium:temp items_in[-1].components."minecraft:lore" set from storage pandamium:temp items_in[-1].components."minecraft:custom_data".pandamium.stored_lore
data remove storage pandamium:temp items_in[-1].components."minecraft:custom_data".pandamium.stored_lore
data remove storage pandamium:temp items_in[-1].components."minecraft:custom_data".pandamium.jail_item
execute store result score <len> variable run data get storage pandamium:temp items_in[-1].components."minecraft:custom_data".pandamium
execute if score <len> variable matches 0 run data remove storage pandamium:temp items_in[-1].components."minecraft:custom_data".pandamium
execute store result score <len> variable run data get storage pandamium:temp items_in[-1].components."minecraft:custom_data"
execute if score <len> variable matches 0 run data remove storage pandamium:temp items_in[-1].components."minecraft:custom_data"
data modify storage pandamium:temp items_out append from storage pandamium:temp items_in[-1]

data remove storage pandamium:temp items_in[-1]
execute if data storage pandamium:temp items_in[0] run function pandamium:impl/jail_items/restore_lore/restore_lore_from_items_iter
