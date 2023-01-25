# Make a copy of the chest
clone ~ ~ ~ ~ ~ ~ 0 0 0

# Insert all BUT ONE of the items into the copy-chest (unless there's only 1 in there anyway)
execute store result score <count> variable run data get block 0 1 0 Items[0].Count
execute unless score <count> variable matches 1 store result block 0 1 0 Items[0].Count byte 1 run scoreboard players remove <count> variable 1
execute unless score <count> variable matches 1 run loot insert 0 0 0 mine 0 1 0 air{drop_contents:1b}

# Record the "Count"s of all items in the chest 
data modify storage pandamium:temp pre_counts set value []
data modify storage pandamium:temp pre_counts append from block 0 0 0 Items[].Count

# Insert JUST ONE of the item into the chest
data modify block 0 1 0 Items[0].Count set value 1b
loot insert 0 0 0 mine 0 1 0 air{drop_contents:1b}

# Record the "Count"s of all items in the chest 
data modify storage pandamium:temp post_counts set value []
data modify storage pandamium:temp post_counts append from block 0 0 0 Items[].Count

# If the two recorded "Count"s are different, that means the last item was successfully inserted, which means all items were successfully inserted
execute store success score <can_insert> variable run data modify storage pandamium:temp pre_counts set from storage pandamium:temp post_counts

execute store result block 0 1 0 Items[0].Count byte 1 run scoreboard players add <count> variable 1
