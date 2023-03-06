scoreboard players set <sound> variable 0

execute if score <returned> variable matches 0 if entity @s[type=#pandamium:item_frames] unless data entity @s Item store success score <returned> variable run tellraw @a[tag=source] [{"text":"[Edit Item Frame]","color":"dark_red"},{"text":" There is no item in this item frame!","color":"red"}]
execute if score <returned> variable matches 0 if entity @s[type=item_display] unless data entity @s item store success score <returned> variable run tellraw @a[tag=source] [{"text":"[Edit Item Frame]","color":"dark_red"},{"text":" There is no item in this item frame!","color":"red"}]

# Item Frames
execute if score <returned> variable matches 0 if score <function> variable matches -200..-101 unless entity @s[type=#pandamium:item_frames] store success score <returned> variable run tellraw @a[tag=source] [{"text":"[Edit Item Frame]","color":"dark_red"},{"text":" Can only apply this to item frames!","color":"red"}]
execute if score <returned> variable matches 0 if score <function> variable matches -101 run function pandamium:misc/edit_item_frame/convert/to_display/try
execute if score <returned> variable matches 0 if score <function> variable matches -102 run function pandamium:misc/edit_item_frame/toggle_visibility

# Item Displays
execute if score <returned> variable matches 0 if score <function> variable matches -300..-201 unless entity @s[type=item_display] store success score <returned> variable run tellraw @a[tag=source] [{"text":"[Edit Item Frame]","color":"dark_red"},{"text":" Can only apply this to item displays!","color":"red"}]
execute if score <returned> variable matches 0 if score <function> variable matches -201 run function pandamium:misc/edit_item_frame/convert/to_frame/try
execute if score <returned> variable matches 0 if score <function> variable matches -202 run function pandamium:misc/edit_item_frame/toggle_billboard
execute if score <returned> variable matches 0 if score <function> variable matches -218..-211 run function pandamium:misc/edit_item_frame/change_size/main

# Either
execute if score <returned> variable matches 0 if score <function> variable matches -301 run function pandamium:misc/edit_item_frame/toggle_glowing

execute if score <sound> variable matches 1 run playsound minecraft:entity.item_frame.add_item neutral @a[distance=..16]