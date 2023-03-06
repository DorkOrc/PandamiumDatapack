kill @e[type=item,distance=..0.01]

setblock ~ ~ ~ yellow_shulker_box

execute if data entity @s item.tag.pandamium.edit_item_frame.entity{id:"minecraft:item_frame"} run item replace block ~ ~ ~ container.1 with item_frame
execute if data entity @s item.tag.pandamium.edit_item_frame.entity{id:"minecraft:glow_item_frame"} run item replace block ~ ~ ~ container.2 with glow_item_frame
function pandamium:misc/edit_item_frame/kill_item_display/remove_temp_nbt
item replace block ~ ~ ~ container.0 from entity @s container.0

loot spawn ~ ~ ~ mine ~ ~ ~ air{drop_contents:1b}
tp @e[type=item,distance=..0.01] @s
