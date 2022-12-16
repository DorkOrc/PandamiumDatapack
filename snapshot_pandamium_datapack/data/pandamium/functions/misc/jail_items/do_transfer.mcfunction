data modify storage pandamium:temp Item set from entity @s Item
data modify storage pandamium:temp Item.tag.pandamium.jail_item set value 1b
execute if data storage pandamium:temp Item.tag.display.Lore unless data storage pandamium:temp Item.tag.pandamium.stored_lore run data modify storage pandamium:temp Item.tag.pandamium.stored_lore set from storage pandamium:temp Item.tag.display.Lore
data modify storage pandamium:temp Item.tag.display.Lore set value ['','','{"text":"Restore lore in Staff World","color":"dark_gray","italic":false}']
data modify storage pandamium:temp Item.tag.display.Lore[0] set from block 0 2 0 Text2
data modify storage pandamium:temp Item.tag.display.Lore[1] set from block 0 2 0 Text1

#

data modify storage pandamium:temp Items set value [{Slot:0b}]
data modify storage pandamium:temp Items[0] merge from storage pandamium:temp Item
setblock 0 1 0 yellow_shulker_box
data modify block 0 1 0 Items set from storage pandamium:temp Items

summon marker 7 64 2 {Tags:["jail_items_marker"]}
execute as @e[type=marker,tag=jail_items_marker,x=0,limit=1] at @s run function pandamium:misc/jail_items/pick_chest

execute at @e[type=marker,tag=jail_items_marker,x=0,limit=1] run loot insert ~ ~ ~ mine 0 1 0 air{drop_contents:1b}

kill @e[type=marker,tag=jail_items_marker,x=0,limit=1]
kill
