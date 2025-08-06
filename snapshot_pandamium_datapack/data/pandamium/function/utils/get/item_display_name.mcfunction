# arguments: source

$execute in pandamium:staff_world run item replace block 2 1 0 container.0 from $(source)

data remove storage pandamium:temp item_display_name
execute in pandamium:staff_world positioned 2 1 0 summon item run function pandamium:impl/get/item_display_name/as_item
