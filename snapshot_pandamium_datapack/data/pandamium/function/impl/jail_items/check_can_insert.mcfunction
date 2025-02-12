# record the number of items in the target item stack.
execute store result score <item_stack_size> variable if items block 2 0 0 container.0 *
execute if score <item_stack_size> variable matches 0 run return 1

# record the number of items in the chest.
execute store result score <contents_before> variable if items block ~ ~ ~ container.* *

# attempt to insert the item stack into the chest.
loot insert ~ ~ ~ mine 2 0 0 barrier[custom_data={drop_contents:true}]

# record the number of items in the chest now.
execute store result score <contents_after> variable if items block ~ ~ ~ container.* *

# leave remaining for next chest check.
scoreboard players operation <items_remaining> variable = <contents_before> variable
scoreboard players operation <items_remaining> variable -= <contents_after> variable
scoreboard players operation <items_remaining> variable += <item_stack_size> variable
item modify block 2 0 0 container.0 {function:"minecraft:set_count",count:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"<items_remaining>"},score:"variable"}}

# return successfully if the full item stack was inserted. Fail otherwise.
return run execute if score <items_remaining> variable matches 0
