# context: in pandamium:staff_world
# arguments: slot

# move item to a fixed location
$item replace block 5 0 0 contents from entity @s $(slot)

# remove the dye colour
item modify block 5 0 0 contents {function:"minecraft:set_components",components:{"!minecraft:dyed_color":{}}}

# add back the original dye colour
data modify block 5 0 0 item.components.minecraft:dyed_color set from block 5 0 0 item.components.minecraft:custom_data.pandamium.rainbow.original_color

# remove the custom_data information
data remove block 5 0 0 item.components.minecraft:custom_data.pandamium.rainbow
execute store result score <compound_length> variable run data get block 5 0 0 item.components.minecraft:custom_data.pandamium
execute if score <compound_length> variable matches 0 run data remove block 5 0 0 item.components.minecraft:custom_data.pandamium
execute if items block 5 0 0 contents *[custom_data={}] run item modify block 5 0 0 contents {function:"minecraft:set_components",components:{"!minecraft:custom_data":{}}}

# return the default equippable component data
execute if items block 5 0 0 contents leather_boots run item modify block 5 0 0 contents {function:"minecraft:set_components",components:{"minecraft:equippable":{equip_sound:"minecraft:item.armor.equip_leather",model:"minecraft:leather",slot:"feet"}}}
execute if items block 5 0 0 contents leather_leggings run item modify block 5 0 0 contents {function:"minecraft:set_components",components:{"minecraft:equippable":{equip_sound:"minecraft:item.armor.equip_leather",model:"minecraft:leather",slot:"legs"}}}
execute if items block 5 0 0 contents leather_chestplate run item modify block 5 0 0 contents {function:"minecraft:set_components",components:{"minecraft:equippable":{equip_sound:"minecraft:item.armor.equip_leather",model:"minecraft:leather",slot:"chest"}}}
execute if items block 5 0 0 contents leather_helmet run item modify block 5 0 0 contents {function:"minecraft:set_components",components:{"minecraft:equippable":{equip_sound:"minecraft:item.armor.equip_leather",model:"minecraft:leather",slot:"head"}}}
execute if items block 5 0 0 contents *[custom_data~{pandamium:{id:"dork_feather"}}] run item modify block 5 0 0 contents {function:"minecraft:set_components",components:{"minecraft:equippable":{allowed_entities:"minecraft:player",equip_sound:"minecraft:intentionally_empty",slot:"head"},"minecraft:dyed_color":{rgb:16711807,show_in_tooltip:false}}}

# replace item with this modified copy
$item replace entity @s $(slot) from block 5 0 0 contents
