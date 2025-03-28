# arguments: id

function pandamium:utils/get/display_name/from_id with storage pandamium.db.players:io selected.entry.data.alt_of

$execute in pandamium:staff_world run loot replace block 5 0 0 contents loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone"}]}],functions:[{function:"minecraft:set_name",entity:"this",name:{storage:"pandamium:temp",nbt:"display_name",interpret:true,extra:[" ",{text:"[👉]",color:"yellow",hover_event:{action:"show_text",value:[{text:"Click to see player info for\n",color:"yellow"},{storage:"pandamium:temp",nbt:"display_name",interpret:true,color:"yellow",bold:true}]},click_event:{action:"run_command",command:"trigger player_info set $(id)"}}]}}]}
data modify storage pandamium:local functions."pandamium:triggers/player_info/print_inspection_menu/*".display_alt_of set from block 5 0 0 item.components.minecraft:custom_name
