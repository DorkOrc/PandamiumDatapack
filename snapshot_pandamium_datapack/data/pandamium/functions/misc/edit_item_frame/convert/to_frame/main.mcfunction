data modify storage pandamium:temp nbt set from entity @s
execute if data entity @s item.tag.pandamium.edit_item_frame.entity{id:"minecraft:item_frame"} at @s positioned 29999998 0 29999998 summon item_frame run function pandamium:misc/edit_item_frame/convert/to_frame/as_item_frame
execute if data entity @s item.tag.pandamium.edit_item_frame.entity{id:"minecraft:glow_item_frame"} at @s positioned 29999998 0 29999998 summon glow_item_frame run function pandamium:misc/edit_item_frame/convert/to_frame/as_item_frame
kill
