clone ~ ~ ~ ~ ~ ~ 0 0 0
data modify storage pandamium:temp Items set from block 0 0 0 Items
loot insert 0 0 0 mine 7 64 -7 air{drop_contents:1b}
execute store success score <can_insert> variable run data modify storage pandamium:temp Items set from block 0 0 0 Items
