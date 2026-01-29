# arguments: id

$execute if data storage pandamium:temp attached_items[{private:{id:$(id)}}] run data modify storage pandamium:temp attached_items[{private:{id:$(id)}}].__viewable__ set value 1b

execute unless data storage pandamium:temp attached_items[{__viewable__:1b}] run return 0

execute unless data storage pandamium:temp attached_items[0] run return 0
execute store result score <taken_by> variable run data get storage pandamium:temp attached_items[0].taken_by.id
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id run function pandamium:utils/get/display_name/from_id with storage pandamium:temp attached_items[0].taken_by
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id in pandamium:staff_world run loot replace block 5 1 0 contents loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone"}]}],functions:[{function:"minecraft:set_name",entity:"this",name:[{text:""},{storage:"pandamium:temp",nbt:"attached_items[0].name",interpret:true},{text:" (",extra:[{storage:"pandamium:temp",nbt:"display_name",interpret:true},{text:" 🫳)"}],color:"gray",font:"minecraft:uniform",strikethrough:false,hover_event:{action:"show_text",value:[{storage:"pandamium:temp",nbt:"username",interpret:true,color:"gray"},{text:" took this item"}]}}]}]}
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id in pandamium:staff_world run data modify storage pandamium:temp attached_items[0].name set from block 5 1 0 item.components.minecraft:custom_name

execute unless data storage pandamium:temp attached_items[1] run return 0
execute store result score <taken_by> variable run data get storage pandamium:temp attached_items[1].taken_by.id
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id run function pandamium:utils/get/username/from_id with storage pandamium:temp attached_items[1].taken_by
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id in pandamium:staff_world run loot replace block 5 1 0 contents loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone"}]}],functions:[{function:"minecraft:set_name",entity:"this",name:[{text:""},{storage:"pandamium:temp",nbt:"attached_items[1].name",interpret:true},{text:" (",extra:[{storage:"pandamium:temp",nbt:"display_name",interpret:true},{text:" 🫳)"}],color:"gray",font:"minecraft:uniform",strikethrough:false,hover_event:{action:"show_text",value:[{storage:"pandamium:temp",nbt:"username",interpret:true,color:"gray"},{text:" took this item"}]}}]}]}
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id in pandamium:staff_world run data modify storage pandamium:temp attached_items[1].name set from block 5 1 0 item.components.minecraft:custom_name

execute unless data storage pandamium:temp attached_items[2] run return 0
execute store result score <taken_by> variable run data get storage pandamium:temp attached_items[2].taken_by.id
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id run function pandamium:utils/get/username/from_id with storage pandamium:temp attached_items[2].taken_by
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id in pandamium:staff_world run loot replace block 5 1 0 contents loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone"}]}],functions:[{function:"minecraft:set_name",entity:"this",name:[{text:""},{storage:"pandamium:temp",nbt:"attached_items[2].name",interpret:true},{text:" (",extra:[{storage:"pandamium:temp",nbt:"display_name",interpret:true},{text:" 🫳)"}],color:"gray",font:"minecraft:uniform",strikethrough:false,hover_event:{action:"show_text",value:[{storage:"pandamium:temp",nbt:"username",interpret:true,color:"gray"},{text:" took this item"}]}}]}]}
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id in pandamium:staff_world run data modify storage pandamium:temp attached_items[2].name set from block 5 1 0 item.components.minecraft:custom_name

execute unless data storage pandamium:temp attached_items[3] run return 0
execute store result score <taken_by> variable run data get storage pandamium:temp attached_items[3].taken_by.id
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id run function pandamium:utils/get/username/from_id with storage pandamium:temp attached_items[3].taken_by
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id in pandamium:staff_world run loot replace block 5 1 0 contents loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone"}]}],functions:[{function:"minecraft:set_name",entity:"this",name:[{text:""},{storage:"pandamium:temp",nbt:"attached_items[3].name",interpret:true},{text:" (",extra:[{storage:"pandamium:temp",nbt:"display_name",interpret:true},{text:" 🫳)"}],color:"gray",font:"minecraft:uniform",strikethrough:false,hover_event:{action:"show_text",value:[{storage:"pandamium:temp",nbt:"username",interpret:true,color:"gray"},{text:" took this item"}]}}]}]}
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id in pandamium:staff_world run data modify storage pandamium:temp attached_items[3].name set from block 5 1 0 item.components.minecraft:custom_name

execute unless data storage pandamium:temp attached_items[4] run return 0
execute store result score <taken_by> variable run data get storage pandamium:temp attached_items[4].taken_by.id
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id run function pandamium:utils/get/username/from_id with storage pandamium:temp attached_items[4].taken_by
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id in pandamium:staff_world run loot replace block 5 1 0 contents loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone"}]}],functions:[{function:"minecraft:set_name",entity:"this",name:[{text:""},{storage:"pandamium:temp",nbt:"attached_items[4].name",interpret:true},{text:" (",extra:[{storage:"pandamium:temp",nbt:"display_name",interpret:true},{text:" 🫳)"}],color:"gray",font:"minecraft:uniform",strikethrough:false,hover_event:{action:"show_text",value:[{storage:"pandamium:temp",nbt:"username",interpret:true,color:"gray"},{text:" took this item"}]}}]}]}
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id in pandamium:staff_world run data modify storage pandamium:temp attached_items[4].name set from block 5 1 0 item.components.minecraft:custom_name

execute unless data storage pandamium:temp attached_items[5] run return 0
execute store result score <taken_by> variable run data get storage pandamium:temp attached_items[5].taken_by.id
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id run function pandamium:utils/get/username/from_id with storage pandamium:temp attached_items[5].taken_by
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id in pandamium:staff_world run loot replace block 5 1 0 contents loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone"}]}],functions:[{function:"minecraft:set_name",entity:"this",name:[{text:""},{storage:"pandamium:temp",nbt:"attached_items[5].name",interpret:true},{text:" (",extra:[{storage:"pandamium:temp",nbt:"display_name",interpret:true},{text:" 🫳)"}],color:"gray",font:"minecraft:uniform",strikethrough:false,hover_event:{action:"show_text",value:[{storage:"pandamium:temp",nbt:"username",interpret:true,color:"gray"},{text:" took this item"}]}}]}]}
execute if score <taken_by> variable matches 1.. unless score <taken_by> variable = @s id in pandamium:staff_world run data modify storage pandamium:temp attached_items[5].name set from block 5 1 0 item.components.minecraft:custom_name
