data modify storage pandamium:temp edit_item_frame.right_rotation set value {axis:[0f,1f,0f],angle:0f}

execute store result score <item_rotation> variable run data get entity @s item.tag.pandamium.edit_item_frame.y_rotation
scoreboard players add <item_rotation> variable 1
execute if score <item_rotation> variable matches 8.. run scoreboard players set <item_rotation> variable 0
execute store result storage pandamium:temp edit_item_frame.right_rotation.angle float -0.7853981634 run scoreboard players get <item_rotation> variable

data modify entity @s transformation.right_rotation set from storage pandamium:temp edit_item_frame.right_rotation
execute store result entity @s item.tag.pandamium.edit_item_frame.y_rotation byte 1 run scoreboard players get <item_rotation> variable
playsound minecraft:entity.item_frame.rotate_item neutral @a[distance=..16]
