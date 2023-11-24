# arguments: id

data remove storage pandamium:temp custom_item_data
$data modify storage pandamium:temp custom_item_data set from storage pandamium:global custom_items."$(id)"
