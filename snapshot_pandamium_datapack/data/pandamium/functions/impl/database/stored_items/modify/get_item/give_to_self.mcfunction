# context: in pandamium:staff_world
# arguments: x, y, z, slot

loot replace block 2 0 0 container.0 27 loot empty
$item replace block 2 0 0 container.0 from block $(x) $(y) $(z) container.$(slot)
return run loot give @s mine 2 0 0 barrier{drop_contents:1b}
