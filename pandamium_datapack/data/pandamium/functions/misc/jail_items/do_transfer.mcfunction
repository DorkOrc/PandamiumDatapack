data modify storage pandamium:temp Item set from entity @s Item

data modify storage pandamium:temp Item.tag.jail_item set value 1b
execute unless data storage pandamium:temp Item.tag.display run data modify storage pandamium:temp Item.tag.jail_item set value 2b
data modify storage pandamium:temp Item.tag.display.Lore set value []
data modify storage pandamium:temp Item.tag.display.Lore append from block 7 64 -6 Text1
data modify storage pandamium:temp Item.tag.display.Lore append from block 7 64 -6 Text2

data modify storage pandamium:temp Items set value [{Slot:0b}]
data modify storage pandamium:temp Items[0] merge from storage pandamium:temp Item
setblock 7 64 -7 shulker_box
data modify block 7 64 -7 Items set from storage pandamium:temp Items

summon marker 7 64 2 {Tags:["jail_items_marker"]}
execute as @e[type=marker,tag=jail_items_marker,x=0,limit=1] at @s run function pandamium:misc/jail_items/pick_chest

execute at @e[type=marker,tag=jail_items_marker,x=0,limit=1] run loot insert ~ ~ ~ mine 7 64 -7 air{drop_contents:1b}

kill @e[type=marker,tag=jail_items_marker,x=0,limit=1]
kill
