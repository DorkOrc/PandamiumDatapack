data modify storage pandamium:temp edit_item_frame.changes set value {}
execute store success score <billboard> variable if data entity @s item.tag.pandamium.edit_item_frame{billboard:1b}

execute if score <billboard> variable matches 0 run data modify storage pandamium:temp edit_item_frame.changes set value {item:{tag:{pandamium:{edit_item_frame:{billboard:1b}}}},billboard:"center"}
#execute if score <billboard> variable matches 0 run data modify storage pandamium:temp edit_item_frame.changes.transformation.left_rotation set value {axis:[0f,0f,1f],angle:0f}

execute if score <billboard> variable matches 1 run data modify storage pandamium:temp edit_item_frame.changes set value {item:{tag:{pandamium:{edit_item_frame:{billboard:0b}}}},billboard:"fixed"}
#execute if score <billboard> variable matches 1 run data modify storage pandamium:temp edit_item_frame.changes.transformation.left_rotation set from entity @s item.tag.pandamium.edit_item_frame.fixed.rotation

data modify entity @s {} merge from storage pandamium:temp edit_item_frame.changes

scoreboard players set <sound> variable 1
execute store success score <returned> variable run tellraw @a[tag=source] [{"text":"[Edit Item Frame]","color":"dark_green"},{"text":" Toggled Billboard!","color":"green"}]
