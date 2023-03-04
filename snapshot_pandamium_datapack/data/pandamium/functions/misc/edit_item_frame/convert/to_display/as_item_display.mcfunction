tag @s add edit_item_frame.item_display
tp @s ~ ~ ~ facing ^ ^ ^-1

data modify entity @s item set from storage pandamium:temp nbt.Item
data remove storage pandamium:temp nbt.Item
data remove storage pandamium:temp nbt.UUID
data remove storage pandamium:temp nbt.Tags

data modify entity @s billboard set value "fixed"
data modify entity @s item.tag.pandamium.edit_item_frame set value {billboard:0b,size:0b,offset:0b,fixed_transformation:{}}
data modify entity @s item.tag.pandamium.edit_item_frame.entity set from storage pandamium:temp nbt

data modify storage pandamium:temp edit_item_frame.transformation merge value {right_rotation:{axis:[0f,0f,1f],angle:0f},scale:[0.5f,0.5f,0.5f]}
execute store result score <angle> variable run data get storage pandamium:temp nbt.ItemRotation 45
execute if data storage pandamium:temp nbt{Facing:1b} run scoreboard players remove <angle> variable 90
execute if data storage pandamium:temp nbt{Facing:0b} run scoreboard players add <angle> variable 90
execute store result storage pandamium:temp edit_item_frame.transformation.right_rotation.angle float 0.01745329252 run scoreboard players get <angle> variable
data modify entity @s transformation merge from storage pandamium:temp edit_item_frame.transformation

data modify entity @s item.tag.pandamium.edit_item_frame.fixed_transformation set from entity @s transformation
