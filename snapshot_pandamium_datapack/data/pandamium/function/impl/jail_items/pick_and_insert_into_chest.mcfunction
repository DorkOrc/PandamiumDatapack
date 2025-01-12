# context: in pandamium:staff_world

execute if predicate {condition:"minecraft:location_check",predicate:{position:{y:{min:320}}}} run return run loot spawn 6.0 64.0 3.0 mine 2 0 0 barrier[custom_data={drop_contents:true}]

# place a double chest here if it doesn't already exist
execute unless block ~ ~ ~ minecraft:chest run setblock ~ ~ ~ minecraft:chest[facing=west,type=right]{CustomName:"Jail Items"} strict
execute unless block ~ ~ ~1 minecraft:chest run setblock ~ ~ ~1 minecraft:chest[facing=west,type=left]{CustomName:"Jail Items"} strict

# attempt to place the item into the left chest
execute if function pandamium:impl/jail_items/check_can_insert run return 1

# else, attempt to place the item into the right chest
execute positioned ~ ~ ~1 if function pandamium:impl/jail_items/check_can_insert run return 1

# else, try again 1 block up
execute positioned ~ ~1 ~ run function pandamium:impl/jail_items/pick_and_insert_into_chest
