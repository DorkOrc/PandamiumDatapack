kill
execute at @s as @e[type=interaction,tag=edit_item_frame.interaction,dx=0] positioned ~-1 ~-1 ~-1 if entity @s[dx=0] run kill
data modify storage pandamium:temp nbt set from entity @s
execute if data entity @s item.tag.pandamium.edit_item_frame.entity{id:"minecraft:item_frame"} at @s positioned 29999998 0 29999998 summon item_frame run function pandamium:misc/edit_item_frame/convert/to_frame/as_item_frame
execute if data entity @s item.tag.pandamium.edit_item_frame.entity{id:"minecraft:glow_item_frame"} at @s positioned 29999998 0 29999998 summon glow_item_frame run function pandamium:misc/edit_item_frame/convert/to_frame/as_item_frame

scoreboard players set <sound> variable 1
execute store success score <returned> variable run tellraw @p[tag=source] [{"text":"[Edit Item Frame]","color":"dark_green"},{"text":" Converted entity to Item Frame!","color":"green"}]
