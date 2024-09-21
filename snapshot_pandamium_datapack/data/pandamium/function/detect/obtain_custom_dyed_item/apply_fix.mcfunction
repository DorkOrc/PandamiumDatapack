# context: in pandamium:staff_world

# reset data
item modify block 5 0 0 contents [{function:"minecraft:set_components",components:{"!minecraft:dyed_color":{}}},{function:"minecraft:filtered",item_filter:{items:"minecraft:leather_boots"},modifier:{function:"minecraft:set_components",components:{"minecraft:equippable":{equip_sound:"minecraft:item.armor.equip_leather",model:"minecraft:leather",slot:"feet"}}}},{function:"minecraft:filtered",item_filter:{items:"minecraft:leather_leggings"},modifier:{function:"minecraft:set_components",components:{"minecraft:equippable":{equip_sound:"minecraft:item.armor.equip_leather",model:"minecraft:leather",slot:"legs"}}}},{function:"minecraft:filtered",item_filter:{items:"minecraft:leather_chestplate"},modifier:{function:"minecraft:set_components",components:{"minecraft:equippable":{equip_sound:"minecraft:item.armor.equip_leather",model:"minecraft:leather",slot:"chest"}}}},{function:"minecraft:filtered",item_filter:{items:"minecraft:leather_helmet"},modifier:{function:"minecraft:set_components",components:{"minecraft:equippable":{equip_sound:"minecraft:item.armor.equip_leather",model:"minecraft:leather",slot:"head"}}}}]

# retreive "dyed_color" component
data modify block 5 0 0 item.components.minecraft:dyed_color set from block 5 0 0 item.components.minecraft:container[0].item.components.minecraft:dyed_color

# retreive "equippable" component
data modify block 5 0 0 item.components.minecraft:equippable set from block 5 0 0 item.components.minecraft:container[0].item.components.minecraft:equippable

# reset "custom_data" component
data remove block 5 0 0 item.components.minecraft:custom_data.pandamium.custom_dye
execute store result score <compound_length> variable run data get block 5 0 0 item.components.minecraft:custom_data.pandamium
execute if score <compound_length> variable matches 0 run data remove block 5 0 0 item.components.minecraft:custom_data.pandamium
execute if items block 5 0 0 contents *[custom_data={}] run item modify block 5 0 0 contents {function:"minecraft:set_components",components:{"!minecraft:custom_data":{}}}

# reset "container" component
item modify block 5 0 0 contents {function:"minecraft:set_components",components:{"!minecraft:container":{}}}
