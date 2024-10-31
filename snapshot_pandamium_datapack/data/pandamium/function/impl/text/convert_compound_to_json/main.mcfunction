# arguments: compound

$loot replace block 5 1 0 contents loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_name",entity:"this",target:"custom_name",name:$(compound)}]}]}]}
data modify storage pandamium:text output set from block 5 1 0 item.components.minecraft:custom_name
