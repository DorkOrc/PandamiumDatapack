data modify storage pandamium:temp NBT set from entity @s

execute store result score <offhand_stored_items> variable if data storage pandamium:temp NBT.Inventory[{Slot:-106b}].tag.BlockEntityTag.Items[]

scoreboard players set <mainhand_stored_shulker_boxes> variable 1
execute unless data storage pandamium:temp NBT.SelectedItem.tag.BlockEntityTag.Items[{id:'minecraft:shulker_box'}] unless data storage pandamium:temp NBT.SelectedItem.tag.BlockEntityTag.Items[{id:'minecraft:black_shulker_box'}] unless data storage pandamium:temp NBT.SelectedItem.tag.BlockEntityTag.Items[{id:'minecraft:blue_shulker_box'}] unless data storage pandamium:temp NBT.SelectedItem.tag.BlockEntityTag.Items[{id:'minecraft:brown_shulker_box'}] unless data storage pandamium:temp NBT.SelectedItem.tag.BlockEntityTag.Items[{id:'minecraft:cyan_shulker_box'}] unless data storage pandamium:temp NBT.SelectedItem.tag.BlockEntityTag.Items[{id:'minecraft:gray_shulker_box'}] unless data storage pandamium:temp NBT.SelectedItem.tag.BlockEntityTag.Items[{id:'minecraft:green_shulker_box'}] unless data storage pandamium:temp NBT.SelectedItem.tag.BlockEntityTag.Items[{id:'minecraft:light_blue_shulker_box'}] unless data storage pandamium:temp NBT.SelectedItem.tag.BlockEntityTag.Items[{id:'minecraft:light_gray_shulker_box'}] unless data storage pandamium:temp NBT.SelectedItem.tag.BlockEntityTag.Items[{id:'minecraft:lime_shulker_box'}] unless data storage pandamium:temp NBT.SelectedItem.tag.BlockEntityTag.Items[{id:'minecraft:magenta_shulker_box'}] unless data storage pandamium:temp NBT.SelectedItem.tag.BlockEntityTag.Items[{id:'minecraft:orange_shulker_box'}] unless data storage pandamium:temp NBT.SelectedItem.tag.BlockEntityTag.Items[{id:'minecraft:pink_shulker_box'}] unless data storage pandamium:temp NBT.SelectedItem.tag.BlockEntityTag.Items[{id:'minecraft:purple_shulker_box'}] unless data storage pandamium:temp NBT.SelectedItem.tag.BlockEntityTag.Items[{id:'minecraft:red_shulker_box'}] unless data storage pandamium:temp NBT.SelectedItem.tag.BlockEntityTag.Items[{id:'minecraft:white_shulker_box'}] unless data storage pandamium:temp NBT.SelectedItem.tag.BlockEntityTag.Items[{id:'minecraft:yellow_shulker_box'}] run scoreboard players set <mainhand_stored_shulker_boxes> variable 0

execute store success score <mainhand_contains_pets> variable if data storage pandamium:temp NBT.SelectedItem.tag.BlockEntityTag.Items[].tag.pandamium.stored_mob

scoreboard players set <can_run> variable 0
execute if predicate pandamium:shulker_boxes_in_both_hands unless score <offhand_stored_items> variable matches 27 unless score <mainhand_stored_shulker_boxes> variable matches 1.. if score <mainhand_contains_pets> variable matches 0 run scoreboard players set <can_run> variable 1

# Display Error
scoreboard players set <displayed_error> variable 0
execute if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless predicate pandamium:shulker_boxes_in_both_hands run tellraw @s [{"text":"[Store Shulker Box]","color":"dark_red"},{"text":" You must be holding shulker boxes in both hands!","color":"red"}]
execute if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score <offhand_stored_items> variable matches 27 run tellraw @s [{"text":"[Store Shulker Box]","color":"dark_red"},{"text":" The shulker box in your offhand is full!","color":"red"}]
execute if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score <mainhand_stored_shulker_boxes> variable matches 1.. run tellraw @s [{"text":"[Store Shulker Box]","color":"dark_red"},{"text":" The shulker box in your main hand must not have shulker boxes inside it!","color":"red"}]
execute if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score <mainhand_contains_pets> variable matches 1 run tellraw @s [{"text":"[Store Mob]","color":"dark_red"},[{"text":" You cannot store ","color":"red"},{"text":"Stored Mob Item","color":"gold"},"s in a nested shulker box!"]]

# Do Insert
execute if score <can_run> variable matches 1 in pandamium:staff_world run function pandamium:misc/store_shulkerbox/do_insert
execute if score <can_run> variable matches 1 run tellraw @s [{"text":"[Store Shulker Box]","color":"dark_green"},[{"text":" Inserted the shulker box that was in your mainhand into the shulker box that is in your ","color":"green"},{"text":"offhand","color":"aqua"},"!"]]

scoreboard players reset @s store_shulkerbox
scoreboard players enable @s store_shulkerbox
