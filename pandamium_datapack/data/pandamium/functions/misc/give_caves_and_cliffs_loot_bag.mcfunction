#run in pandamium:staff_world

setblock 7 64 -7 shulker_box{Items:[]}

loot insert 7 64 -7 loot pandamium:loot_bag_contents
data modify storage pandamium:vote_shop Items set from block 7 64 -7 Items

loot replace block 7 64 -7 container.0 27 loot empty
loot replace block 7 64 -7 container.0 loot pandamium:loot_bag_item
data modify block 7 64 -7 Items[0].tag.Items set from storage pandamium:vote_shop Items

loot give @s mine 7 64 -7 air{drop_contents:1b}

setblock 7 64 -7 chest
