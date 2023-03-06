tag @s remove raycast.target

execute if entity @s[type=#pandamium:item_frames] run function pandamium:misc/edit_item_frame/run
execute if entity @s[type=interaction,tag=edit_item_frame.interaction] at @s align xyz positioned ~.5 ~.5 ~.5 as @e[type=item_display,tag=edit_item_frame.item_display,distance=..0.01] run function pandamium:misc/edit_item_frame/run
