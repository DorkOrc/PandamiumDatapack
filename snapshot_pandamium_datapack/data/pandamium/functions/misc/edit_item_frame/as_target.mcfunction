tag @s remove raycast.target

execute if score <returned> variable matches 0 if entity @s[type=#pandamium:item_frames] unless data entity @s Item store success score <returned> variable run tellraw @a[tag=source] [{"text":"[Edit Item Frame]","color":"dark_red"},{"text":" There is no item in this item frame!","color":"red"}]
execute if score <returned> variable matches 0 if entity @s[type=item_display] unless data entity @s item store success score <returned> variable run tellraw @a[tag=source] [{"text":"[Edit Item Frame]","color":"dark_red"},{"text":" There is no item in this item frame!","color":"red"}]

execute if score <returned> variable matches 0 if score <function> variable matches -1001 if entity @s[type=item_display] run function pandamium:misc/edit_item_frame/convert/to_frame/main
execute if score <returned> variable matches 0 if score <function> variable matches -1001 unless entity @s[type=item_display] store success score <returned> variable run tellraw @a[tag=source] [{"text":"[Edit Item Frame]","color":"dark_red"},{"text":" This is already an item frame!","color":"red"}]
execute if score <returned> variable matches 0 if score <function> variable matches -1002 if entity @s[type=#pandamium:item_frames] run function pandamium:misc/edit_item_frame/convert/to_display/main
execute if score <returned> variable matches 0 if score <function> variable matches -1001 unless entity @s[type=#pandamium:item_frames] store success score <returned> variable run tellraw @a[tag=source] [{"text":"[Edit Item Frame]","color":"dark_red"},{"text":" This is already an item display!","color":"red"}]

# Item Frames
execute if score <returned> variable matches 0 if score <function> variable matches -100..-1 unless entity @s[type=#pandamium:item_frames] store success score <returned> variable run tellraw @a[tag=source] [{"text":"[Edit Item Frame]","color":"dark_red"},{"text":" Cannot apply this to item displays!","color":"red"}]

execute if score <returned> variable matches 0 if score <function> variable matches -1 run function pandamium:misc/edit_item_frame/toggle_visibility
execute if score <returned> variable matches 0 if score <function> variable matches -1 store success score <returned> variable run tellraw @a[tag=source] [{"text":"[Edit Item Frame]","color":"dark_green"},{"text":" Toggled Invisible!","color":"green"}]

# Item Displays
execute if score <returned> variable matches 0 if score <function> variable matches -200..-101 unless entity @s[type=item_display] store success score <returned> variable run tellraw @a[tag=source] [{"text":"[Edit Item Frame]","color":"dark_red"},{"text":" Cannot apply this to item displays!","color":"red"}]

execute if score <returned> variable matches 0 if score <function> variable matches -101 run function pandamium:misc/edit_item_frame/toggle_billboard
execute if score <returned> variable matches 0 if score <function> variable matches -101 store success score <returned> variable run tellraw @a[tag=source] [{"text":"[Edit Item Frame]","color":"dark_green"},{"text":" Toggled Billboard!","color":"green"}]

execute if score <returned> variable matches 0 if score <function> variable matches -113..-111 run function pandamium:misc/edit_item_frame/change_size
