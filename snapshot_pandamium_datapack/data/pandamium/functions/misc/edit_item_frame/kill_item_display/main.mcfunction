execute at @s positioned 29999999 0 29999999 if loaded ~ ~ ~ run function pandamium:misc/edit_item_frame/kill_item_display/drop_item_and_kill
kill
execute at @s run playsound entity.item_frame.break neutral @a[distance=..16]
