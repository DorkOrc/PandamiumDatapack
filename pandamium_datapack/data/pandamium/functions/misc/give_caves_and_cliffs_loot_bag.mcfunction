# run IN pandamium:staff_world

setblock 0 0 0 shulker_box

loot insert 0 0 0 loot pandamium:loot_bag_contents
data modify storage pandamium:vote_shop Items set from block 0 0 0 Items

loot replace block 0 0 0 container.0 27 loot empty
loot replace block 0 0 0 container.0 loot pandamium:loot_bag_item
data modify block 0 0 0 Items[0].tag.Items set from storage pandamium:vote_shop Items

loot give @s mine 0 0 0 air{drop_contents:1b}
