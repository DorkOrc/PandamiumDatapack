# arguments: id, version

data remove storage pandamium:temp custom_item_data
$data modify storage pandamium:temp custom_item_data set from storage pandamium:global custom_items."$(id)".0
$data modify storage pandamium:temp custom_item_data merge from storage pandamium:global custom_items."$(id)"."$(version)"
