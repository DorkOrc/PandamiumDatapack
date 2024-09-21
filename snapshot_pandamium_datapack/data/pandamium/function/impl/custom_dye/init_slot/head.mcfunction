execute if items entity @s armor.head *[custom_data~{pandamium:{id:"dork_feather"}}] run return run item modify entity @s armor.head {function:"minecraft:set_custom_data",tag:{pandamium:{custom_dye:{}}}}
execute if items entity @s armor.head *[!dyed_color] run return run item modify entity @s armor.head [{function:"minecraft:set_custom_data",tag:{pandamium:{custom_dye:{}}}},{function:"minecraft:set_components",components:{"minecraft:equippable":{dispensable:false,equip_sound:"minecraft:intentionally_empty",model:"minecraft:leather",slot:"head"}}}]

# store the original dye colour in custom_data so that it can be returned later and so that the custom_data can inform whether to show the dye colour in the tooltip
item replace block 5 0 0 contents from entity @s armor.head
item modify block 5 0 0 contents [{function:"minecraft:set_custom_data",tag:{pandamium:{custom_dye:{}}}},{function:"minecraft:set_components",components:{"minecraft:equippable":{dispensable:false,equip_sound:"minecraft:intentionally_empty",model:"minecraft:leather",slot:"head"}}}]
data modify block 5 0 0 item.components.minecraft:custom_data.pandamium.custom_dye.original_color set from block 5 0 0 item.components.minecraft:dyed_color
item replace entity @s armor.head from block 5 0 0 contents
