# make a clone of the chest
clone ~ ~ ~ ~ ~ ~ 0 0 0

# attempt to insert ALL-BUT-ONE of the items into the chest clone (unless there's only 1 in there anyway).
execute if data block 2 0 0 Items[0].count store result score <initial_count> variable store result score <decremented_count> variable run data get block 2 0 0 Items[0].count
execute unless data block 2 0 0 Items[0].count store result score <decremented_count> variable run scoreboard players set <initial_count> variable 1
execute unless score <initial_count> variable matches 1 store result block 2 0 0 Items[0].count int 1 run scoreboard players remove <decremented_count> variable 1
execute unless score <initial_count> variable matches 1 run loot insert 0 0 0 mine 2 0 0 barrier{drop_contents:1b}

# record the contents of all items in the chest clone as "contents_before".
data modify storage pandamium:temp contents_before set from block 0 0 0 Items

# attempt to insert JUST ONE of the item into the chest clone.
data modify block 2 0 0 Items[0].count set value 1
loot insert 0 0 0 mine 2 0 0 barrier{drop_contents:1b}
execute store result block 2 0 0 Items[0].count int 1 run scoreboard players get <initial_count> variable

# record the contents of all items in the chest now as "contents_afterwards".
data modify storage pandamium:temp contents_afterwards set from block 0 0 0 Items

# if the two recorded contents are different, that means the last item was successfully inserted, which means all items were successfully inserted.
execute store success score <can_insert> variable run data modify storage pandamium:temp contents_before set from storage pandamium:temp contents_afterwards
return run execute if score <can_insert> variable matches 1
