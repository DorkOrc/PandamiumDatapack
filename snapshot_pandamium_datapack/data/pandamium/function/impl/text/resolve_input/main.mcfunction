execute in pandamium:staff_world run loot replace block 5 1 0 contents loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone"}]}],functions:[{function:"minecraft:set_name",entity:"this",name:{storage:"pandamium:text",nbt:"input",interpret:true}}]}
execute in pandamium:staff_world run data modify storage pandamium:text input set from block 5 1 0 item.components.minecraft:custom_name
