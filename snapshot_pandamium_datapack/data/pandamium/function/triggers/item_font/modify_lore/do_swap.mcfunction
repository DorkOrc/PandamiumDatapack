# inputs:
# - score <swap_line> variable
# - item in [contents] slot @ block 5 0 0 in pandamium:staff_world

execute in pandamium:staff_world run data modify storage pandamium:local functions."pandamium:triggers/item_font/*".item set from block 5 0 0 item

# get name
data modify storage pandamium:local functions."pandamium:triggers/item_font/*".name set value {__padding__:true,text:""}
data modify storage pandamium:text input set value ""
data modify storage pandamium:text input set from storage pandamium:local functions."pandamium:triggers/item_font/*".item.components.minecraft:custom_name
execute if function pandamium:utils/text/test/non_empty run data modify storage pandamium:local functions."pandamium:triggers/item_font/*".name set from storage pandamium:local functions."pandamium:triggers/item_font/*".item.components.minecraft:custom_name

# get lore data
execute store result score <original_lore_lines> variable if data storage pandamium:local functions."pandamium:triggers/item_font/*".item.components.minecraft:lore[]

data modify storage pandamium:local functions."pandamium:triggers/item_font/*".lore set value [{__padding__:true,text:""},{__padding__:true,text:""},{__padding__:true,text:""},{__padding__:true,text:""}]

execute if score <original_lore_lines> variable matches 1.. run data modify storage pandamium:text input set from storage pandamium:local functions."pandamium:triggers/item_font/*".item.components.minecraft:lore[0]
execute if score <original_lore_lines> variable matches 1.. if function pandamium:utils/text/test/non_empty run data modify storage pandamium:local functions."pandamium:triggers/item_font/*".lore[0] set from storage pandamium:local functions."pandamium:triggers/item_font/*".item.components.minecraft:lore[0]

execute if score <original_lore_lines> variable matches 2.. run data modify storage pandamium:text input set from storage pandamium:local functions."pandamium:triggers/item_font/*".item.components.minecraft:lore[1]
execute if score <original_lore_lines> variable matches 2.. if function pandamium:utils/text/test/non_empty run data modify storage pandamium:local functions."pandamium:triggers/item_font/*".lore[1] set from storage pandamium:local functions."pandamium:triggers/item_font/*".item.components.minecraft:lore[1]

execute if score <original_lore_lines> variable matches 3.. run data modify storage pandamium:text input set from storage pandamium:local functions."pandamium:triggers/item_font/*".item.components.minecraft:lore[2]
execute if score <original_lore_lines> variable matches 3.. if function pandamium:utils/text/test/non_empty run data modify storage pandamium:local functions."pandamium:triggers/item_font/*".lore[2] set from storage pandamium:local functions."pandamium:triggers/item_font/*".item.components.minecraft:lore[2]

execute if score <original_lore_lines> variable matches 4.. run data modify storage pandamium:text input set from storage pandamium:local functions."pandamium:triggers/item_font/*".item.components.minecraft:lore[3]
execute if score <original_lore_lines> variable matches 4.. if function pandamium:utils/text/test/non_empty run data modify storage pandamium:local functions."pandamium:triggers/item_font/*".lore[3] set from storage pandamium:local functions."pandamium:triggers/item_font/*".item.components.minecraft:lore[3]

# swap
execute if score <swap_line> variable matches 1 in pandamium:staff_world run item modify block 5 0 0 contents [{function:"minecraft:set_name",entity:"this",name:{storage:"pandamium:local",nbt:'functions."pandamium:triggers/item_font/*".lore[0]',interpret:true}},{function:"minecraft:filtered",item_filter:{components:{"minecraft:custom_name":""}},modifier:{function:"minecraft:set_components",components:{"!minecraft:custom_name":{}}}}]
execute if score <swap_line> variable matches 2 in pandamium:staff_world run item modify block 5 0 0 contents [{function:"minecraft:set_name",entity:"this",name:{storage:"pandamium:local",nbt:'functions."pandamium:triggers/item_font/*".lore[1]',interpret:true}},{function:"minecraft:filtered",item_filter:{components:{"minecraft:custom_name":""}},modifier:{function:"minecraft:set_components",components:{"!minecraft:custom_name":{}}}}]
execute if score <swap_line> variable matches 3 in pandamium:staff_world run item modify block 5 0 0 contents [{function:"minecraft:set_name",entity:"this",name:{storage:"pandamium:local",nbt:'functions."pandamium:triggers/item_font/*".lore[2]',interpret:true}},{function:"minecraft:filtered",item_filter:{components:{"minecraft:custom_name":""}},modifier:{function:"minecraft:set_components",components:{"!minecraft:custom_name":{}}}}]
execute if score <swap_line> variable matches 4 in pandamium:staff_world run item modify block 5 0 0 contents [{function:"minecraft:set_name",entity:"this",name:{storage:"pandamium:local",nbt:'functions."pandamium:triggers/item_font/*".lore[3]',interpret:true}},{function:"minecraft:filtered",item_filter:{components:{"minecraft:custom_name":""}},modifier:{function:"minecraft:set_components",components:{"!minecraft:custom_name":{}}}}]

execute if score <swap_line> variable matches 1 run data modify storage pandamium:local functions."pandamium:triggers/item_font/*".lore[0] set from storage pandamium:local functions."pandamium:triggers/item_font/*".name
execute if score <swap_line> variable matches 2 run data modify storage pandamium:local functions."pandamium:triggers/item_font/*".lore[1] set from storage pandamium:local functions."pandamium:triggers/item_font/*".name
execute if score <swap_line> variable matches 3 run data modify storage pandamium:local functions."pandamium:triggers/item_font/*".lore[2] set from storage pandamium:local functions."pandamium:triggers/item_font/*".name
execute if score <swap_line> variable matches 4 run data modify storage pandamium:local functions."pandamium:triggers/item_font/*".lore[3] set from storage pandamium:local functions."pandamium:triggers/item_font/*".name

execute if data storage pandamium:local functions."pandamium:triggers/item_font/*".lore[-1].__padding__ run data remove storage pandamium:local functions."pandamium:triggers/item_font/*".lore[-1]
execute if data storage pandamium:local functions."pandamium:triggers/item_font/*".lore[-1].__padding__ run data remove storage pandamium:local functions."pandamium:triggers/item_font/*".lore[-1]
execute if data storage pandamium:local functions."pandamium:triggers/item_font/*".lore[-1].__padding__ run data remove storage pandamium:local functions."pandamium:triggers/item_font/*".lore[-1]
execute if data storage pandamium:local functions."pandamium:triggers/item_font/*".lore[-1].__padding__ run data remove storage pandamium:local functions."pandamium:triggers/item_font/*".lore[-1]
execute in pandamium:staff_world run data modify block 5 0 0 item.components.minecraft:lore set from storage pandamium:local functions."pandamium:triggers/item_font/*".lore
