tellraw @s [{text:"======== ",color:"yellow"},{text:"Homes List",bold:true},{text:" ========\n"},{text:"Player: ",bold:true},{storage:"pandamium.db.players:io",nbt:"selected.entry.username",color:"gold",bold:true}]

function pandamium:triggers/homes/print_menu/staff/list

tellraw @s {text:"============================",color:"yellow"}
