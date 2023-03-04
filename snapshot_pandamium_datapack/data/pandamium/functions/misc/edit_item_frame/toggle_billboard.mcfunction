data modify storage pandamium:temp edit_item_frame.changes set value {}
execute store success score <is_billboarded> variable if data entity @s item.tag.pandamium.edit_item_frame{billboard:1b}

execute if score <is_billboarded> variable matches 0 run data modify storage pandamium:temp edit_item_frame.changes set value {billboard:"center",transformation:{right_rotation:{axis:[0f,1f,0f],angle:0f}},item:{tag:{pandamium:{edit_item_frame:{billboard:1b}}}}}

execute if score <is_billboarded> variable matches 1 run data modify storage pandamium:temp edit_item_frame.changes set value {billboard:"fixed",item:{tag:{pandamium:{edit_item_frame:{billboard:0b}}}}}
execute if score <is_billboarded> variable matches 1 run data modify storage pandamium:temp edit_item_frame.changes.transformation set from entity @s item.tag.pandamium.edit_item_frame.fixed_transformation

data modify entity @s {} merge from storage pandamium:temp edit_item_frame.changes
