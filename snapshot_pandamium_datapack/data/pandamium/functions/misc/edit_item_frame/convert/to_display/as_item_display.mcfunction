tag @s add edit_item_frame.item_display
tp @s ~ ~ ~ ~ ~
data modify entity @s item_display set value "none"

data modify entity @s item.tag.pandamium.edit_item_frame set value {version:1,billboard:0b,size:2b,y_rotation:0b}
data modify entity @s item set from storage pandamium:temp nbt.Item
data modify entity @s Glowing set from storage pandamium:temp nbt.Glowing
execute if data storage pandamium:temp nbt{id:"minecraft:glow_item_frame"} run data modify entity @s brightness set value {sky:15,block:15}

data remove storage pandamium:temp nbt.Item
data remove storage pandamium:temp nbt.UUID
data remove storage pandamium:temp nbt.Tags
data remove storage pandamium:temp nbt.Glowing
data modify entity @s item.tag.pandamium.edit_item_frame.entity set from storage pandamium:temp nbt

data modify storage pandamium:temp edit_item_frame.transformation set value {left_rotation:{axis:[0f,0f,1f],angle:0f},scale:[0.5f,0.5f,0.5f]}
execute store result storage pandamium:temp edit_item_frame.transformation.left_rotation.angle float -0.7853981634 run data get storage pandamium:temp nbt.ItemRotation
data modify entity @s transformation merge from storage pandamium:temp edit_item_frame.transformation
data modify entity @s item.tag.pandamium.edit_item_frame.fixed.rotation set from storage pandamium:temp edit_item_frame.transformation.left_rotation

scoreboard players set <size> variable 2
function pandamium:misc/edit_item_frame/change_size/run
