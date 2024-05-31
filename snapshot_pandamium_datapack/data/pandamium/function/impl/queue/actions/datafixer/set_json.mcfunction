# arguments: compound

$execute in pandamium:staff_world run loot replace block 5 0 0 contents loot {pools:[{rolls:1,entries:[{type:"item",name:"stone",functions:[{function:"set_name",name:$(compound)}]}]}]}
execute in pandamium:staff_world run data modify storage pandamium.db.players:io selected.entry.data.flair.json set from block 5 0 0 item.components."minecraft:custom_name"
