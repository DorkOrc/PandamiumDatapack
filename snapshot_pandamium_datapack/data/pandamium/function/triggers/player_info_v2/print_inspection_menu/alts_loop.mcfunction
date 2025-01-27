# arguments: id

function pandamium:utils/get/display_name/from_id with storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".alt_ids[0]

$execute in pandamium:staff_world run loot replace block 5 0 0 contents loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone"}]}],functions:[{function:"minecraft:set_name",entity:"this",name:{storage:"pandamium:temp",nbt:"display_name",interpret:true,extra:[" ",{text:"[👉]",color:"yellow",hover_event:{action:"show_text",value:[{text:"Click to see player info for\n",color:"yellow"},{storage:"pandamium:temp",nbt:"display_name",interpret:true,color:"yellow",bold:true}]},click_event:{action:"run_command",command:"trigger player_info_v2 set $(id)"}}]}}]}
execute in pandamium:staff_world run data modify storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".alt_names append from block 5 0 0 item.components.minecraft:custom_name

data remove storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".alt_ids[0]
execute if data storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".alt_ids[0] run function pandamium:triggers/player_info_v2/print_inspection_menu/alts_loop with storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".alt_ids[0]
