# arguments: source

$execute in pandamium:staff_world run item replace block 2 1 0 container.0 from $(source)

data remove storage pandamium:temp item_display_name
execute in pandamium:staff_world positioned 2 1 0 run kill @e[distance=..0.001,type=item]
execute in pandamium:staff_world positioned 2 1 0 run summon item ~ ~ ~ {Item:{id:"minecraft:stone"}}
execute in pandamium:staff_world positioned 2 1 0 as @e[limit=1,distance=..0.001,type=item] run function pandamium:impl/get/item_display_name/as_item
