# context: in pandamium:staff_world

data modify storage pandamium:local functions."pandamium:detect/obtain_transient_equippable_item/apply_fix".item set from block 5 0 0 item
data remove storage pandamium:local functions."pandamium:detect/obtain_transient_equippable_item/apply_fix".original_item
data modify storage pandamium:local functions."pandamium:detect/obtain_transient_equippable_item/apply_fix".original_item set from storage pandamium:local functions."pandamium:detect/obtain_transient_equippable_item/apply_fix".item.components.minecraft:container[0].item

# reset data (set to default component depending on item type)
item modify block 5 0 0 contents [{function:"minecraft:set_components",components:{"!minecraft:dyed_color":{},"!minecraft:container":{},"minecraft:tooltip_display":{}}},{function:"minecraft:filtered",item_filter:{items:"minecraft:leather_boots"},modifier:{function:"minecraft:set_components",components:{"minecraft:equippable":{equip_sound:"minecraft:item.armor.equip_leather",asset_id:"minecraft:leather",slot:"feet"}}}},{function:"minecraft:filtered",item_filter:{items:"minecraft:leather_leggings"},modifier:{function:"minecraft:set_components",components:{"minecraft:equippable":{equip_sound:"minecraft:item.armor.equip_leather",asset_id:"minecraft:leather",slot:"legs"}}}},{function:"minecraft:filtered",item_filter:{items:"minecraft:leather_chestplate"},modifier:{function:"minecraft:set_components",components:{"minecraft:equippable":{equip_sound:"minecraft:item.armor.equip_leather",asset_id:"minecraft:leather",slot:"chest"}}}},{function:"minecraft:filtered",item_filter:{items:"minecraft:leather_helmet"},modifier:{function:"minecraft:set_components",components:{"minecraft:equippable":{equip_sound:"minecraft:item.armor.equip_leather",asset_id:"minecraft:leather",slot:"head"}}}}]

# retreive "dyed_color" component
execute if data storage pandamium:local functions."pandamium:detect/obtain_transient_equippable_item/apply_fix".original_item.components.minecraft:dyed_color run data modify block 5 0 0 item.components.minecraft:dyed_color set from storage pandamium:local functions."pandamium:detect/obtain_transient_equippable_item/apply_fix".original_item.components.minecraft:dyed_color

# retreive "equippable" component
execute if data storage pandamium:local functions."pandamium:detect/obtain_transient_equippable_item/apply_fix".original_item.components.minecraft:equippable run data modify block 5 0 0 item.components.minecraft:equippable set from storage pandamium:local functions."pandamium:detect/obtain_transient_equippable_item/apply_fix".original_item.components.minecraft:equippable

# retreive "container" component
execute if data storage pandamium:local functions."pandamium:detect/obtain_transient_equippable_item/apply_fix".original_item.components.minecraft:container run data modify block 5 0 0 item.components.minecraft:container set from storage pandamium:local functions."pandamium:detect/obtain_transient_equippable_item/apply_fix".original_item.components.minecraft:container

# retreive "tooltip_display" component
execute if data storage pandamium:local functions."pandamium:detect/obtain_transient_equippable_item/apply_fix".original_item.components.minecraft:tooltip_display run data modify block 5 0 0 item.components.minecraft:tooltip_display set from storage pandamium:local functions."pandamium:detect/obtain_transient_equippable_item/apply_fix".original_item.components.minecraft:tooltip_display

# reset "custom_data" component
data remove storage pandamium:local functions."pandamium:detect/obtain_transient_equippable_item/apply_fix".item.components.minecraft:custom_data.pandamium.transient_equippable
execute store result score <compound_length> variable run data get storage pandamium:local functions."pandamium:detect/obtain_transient_equippable_item/apply_fix".item.components.minecraft:custom_data.pandamium
execute if score <compound_length> variable matches 0 run data remove storage pandamium:local functions."pandamium:detect/obtain_transient_equippable_item/apply_fix".item.components.minecraft:custom_data.pandamium
execute store result score <compound_length> variable run data get storage pandamium:local functions."pandamium:detect/obtain_transient_equippable_item/apply_fix".item.components.minecraft:custom_data
execute if score <compound_length> variable matches 1.. run data modify block 5 0 0 item.components.minecraft:custom_data set from storage pandamium:local functions."pandamium:detect/obtain_transient_equippable_item/apply_fix".item.components.minecraft:custom_data
execute if score <compound_length> variable matches 0 run item modify block 5 0 0 contents {function:"minecraft:set_components",components:{"!minecraft:custom_data":{}}}
