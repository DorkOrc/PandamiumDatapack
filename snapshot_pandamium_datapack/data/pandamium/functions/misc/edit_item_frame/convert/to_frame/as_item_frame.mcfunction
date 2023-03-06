# `ItemRotation` cannot exist unless `Item` exists.
# Since `Item` is not previously stored into `item.tag.pandamium.edit_item_frame.entity`, a dummy item can be put into the frame to fix that issue.
item replace entity @s container.0 with stone
data modify entity @s {} merge from storage pandamium:temp nbt.item.tag.pandamium.edit_item_frame.entity

data remove storage pandamium:temp nbt.item.tag.pandamium.edit_item_frame
execute store result score <server_tags> variable run data get storage pandamium:temp nbt.item.tag.pandamium
execute if score <server_tags> variable matches 0 run data remove storage pandamium:temp nbt.item.tag.pandamium
execute store result score <server_tags> variable run data get storage pandamium:temp nbt.item.tag
execute if score <server_tags> variable matches 0 run data remove storage pandamium:temp nbt.item.tag
data modify entity @s Item set from storage pandamium:temp nbt.item

data modify entity @s Pos set from storage pandamium:temp nbt.Pos
data modify entity @s Glowing set from storage pandamium:temp nbt.Glowing
