kill

execute at @s align xyz run summon interaction ~.5 ~.125 ~.5 {width:0.75f,height:0.75f,Tags:["edit_item_frame.interaction"]}

data modify storage pandamium:temp nbt set from entity @s
execute if entity @s[type=item_frame] run data modify storage pandamium:temp nbt.id set value "minecraft:item_frame"
execute if entity @s[type=glow_item_frame] run data modify storage pandamium:temp nbt.id set value "minecraft:glow_item_frame"
execute at @s align xzy positioned ~.5 ~.5 ~.5 summon item_display run function pandamium:misc/edit_item_frame/convert/to_display/as_item_display

scoreboard players set <sound> variable 1
execute store success score <returned> variable run tellraw @p[tag=source] [{"text":"[Edit Item Frame]","color":"dark_green"},{"text":" Converted entity to Item Display!","color":"green"}]
