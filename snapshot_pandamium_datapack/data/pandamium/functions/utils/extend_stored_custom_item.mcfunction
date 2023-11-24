function pandamium:utils/get/custom_item_data with storage pandamium:temp item.tag.pandamium
data modify storage pandamium:temp custom_item_data merge from storage pandamium:temp item.tag.pandamium
data modify storage pandamium:temp item.tag.pandamium set from storage pandamium:temp custom_item_data
