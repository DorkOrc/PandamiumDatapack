execute store result entity @s transformation.scale[] float 0.25001 run scoreboard players get <size> variable
execute store result entity @s item.tag.pandamium.edit_item_frame.size byte 1 run scoreboard players get <size> variable

execute at @s as @e[type=interaction,tag=edit_item_frame.interaction,dx=0] positioned ~-1 ~-1 ~-1 if entity @s[dx=0] positioned ~1 ~1 ~1 align xyz run function pandamium:misc/edit_item_frame/change_size/as_interaction
