execute unless data storage pandamium:temp item.components."minecraft:custom_data".pandamium.version run data modify storage pandamium:temp item.components."minecraft:custom_data".pandamium.version set value 0
function pandamium:impl/extend_stored_custom_item/get_custom_item_data with storage pandamium:temp item.components."minecraft:custom_data".pandamium

data modify storage pandamium:temp custom_item_data merge from storage pandamium:temp item.components."minecraft:custom_data".pandamium
data modify storage pandamium:temp item.components."minecraft:custom_data".pandamium set from storage pandamium:temp custom_item_data
