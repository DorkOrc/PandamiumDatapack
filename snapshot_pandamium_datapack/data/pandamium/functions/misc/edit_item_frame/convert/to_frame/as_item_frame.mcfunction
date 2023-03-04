data modify entity @s {} merge from storage pandamium:temp nbt.item.tag.pandamium.edit_item_frame.entity
data modify entity @s Facing set from storage pandamium:temp nbt.item.tag.pandamium.edit_item_frame.entity.Facing

data remove storage pandamium:temp nbt.item.tag.pandamium.edit_item_frame
execute store result score <server_tags> variable run data get storage pandamium:temp nbt.item.tag.pandamium
execute if score <server_tags> variable matches 0 run data remove storage pandamium:temp nbt.item.tag.pandamium

data modify entity @s Item set from storage pandamium:temp nbt.item
data modify entity @s Pos set from storage pandamium:temp nbt.Pos
