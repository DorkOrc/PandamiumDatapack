# context: as @s[type=item] in pandamium:staff_world

# store and then replace lore
item modify entity @s contents {function:"minecraft:set_custom_data",tag:{pandamium:{jail_item:1b}}}
execute if items entity @s contents *[lore,!lore=[]] unless data entity @s Item.components."minecraft:custom_data".pandamium.stored_lore run data modify entity @s Item.components."minecraft:custom_data".pandamium.stored_lore set from entity @s Item.components."minecraft:lore"
item modify entity @s contents {function:"minecraft:set_lore",entity:"this",lore:[{nbt:"functions.'pandamium:impl/jail_items/*'.lore[0]",storage:"pandamium:local",interpret:true},{nbt:"functions.'pandamium:impl/jail_items/*'.lore[1]",storage:"pandamium:local",interpret:true},{text:"Restore lore in The Staff World",color:"dark_gray",italic:false}],mode:"replace_all"}

# put item into yellow_shulker_box
loot replace block 2 0 0 container.0 27 loot pandamium:intentionally_empty
item replace block 2 0 0 container.0 from entity @s contents

# search through double-chests to insert the item stack into one
execute positioned 7 64 2 run function pandamium:impl/jail_items/pick_and_insert_into_chest

function pandamium:utils/kill_technical_entity_discretely
