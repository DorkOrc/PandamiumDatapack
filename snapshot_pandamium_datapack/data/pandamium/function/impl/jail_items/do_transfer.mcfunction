# context: in pandamium:staff_world

# store and then replace lore
data modify storage pandamium:temp item set from entity @s Item
data modify storage pandamium:temp item.components."minecraft:custom_data".pandamium.jail_item set value 1b
execute if data storage pandamium:temp item.components."minecraft:lore" unless data storage pandamium:temp item.components."minecraft:custom_data".pandamium.stored_lore run data modify storage pandamium:temp item.components."minecraft:custom_data".pandamium.stored_lore set from storage pandamium:temp item.components."minecraft:lore"
data modify storage pandamium:temp item.components."minecraft:lore" set value ['""','""','{"text":"Restore lore in The Staff World","color":"dark_gray","italic":false}']
data modify storage pandamium:temp item.components."minecraft:lore"[0] set from block 3 0 0 front_text.messages[0]
data modify storage pandamium:temp item.components."minecraft:lore"[1] set from block 3 0 0 front_text.messages[1]

# put item into yellow_shulker_box
loot replace block 2 0 0 container.0 27 loot pandamium:intentionally_empty
item replace block 2 0 0 container.0 with stone
data modify block 2 0 0 Items[0] merge from storage pandamium:temp item

# search through double-chests to insert the item into one
scoreboard players set <y> variable 64
execute positioned 7 64 2 run function pandamium:impl/jail_items/pick_and_insert_into_chest

function pandamium:utils/kill
