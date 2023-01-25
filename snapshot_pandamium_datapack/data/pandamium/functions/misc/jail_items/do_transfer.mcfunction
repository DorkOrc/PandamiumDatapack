# run IN pandamium:staff_world

# store and then replace lore
data modify storage pandamium:temp Item set from entity @s Item
data modify storage pandamium:temp Item.tag.pandamium.jail_item set value 1b
execute if data storage pandamium:temp Item.tag.display.Lore unless data storage pandamium:temp Item.tag.pandamium.stored_lore run data modify storage pandamium:temp Item.tag.pandamium.stored_lore set from storage pandamium:temp Item.tag.display.Lore
data modify storage pandamium:temp Item.tag.display.Lore set value ['""','""','{"text":"Restore lore in The Staff World","color":"dark_gray","italic":false}']
data modify storage pandamium:temp Item.tag.display.Lore[0] set from block 0 2 0 Text1
data modify storage pandamium:temp Item.tag.display.Lore[1] set from block 0 2 0 Text2

# put item into yellow_shulker_box
setblock 0 1 0 yellow_shulker_box{Items:[]}
item replace block 0 1 0 container.0 with stone
data modify block 0 1 0 Items[0] merge from storage pandamium:temp Item

# search through double-chests to insert the item into one
execute positioned 7 64 2 run function pandamium:misc/jail_items/pick_and_insert_into_chest

kill
