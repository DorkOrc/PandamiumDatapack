# arguments: id

$function pandamium:utils/database/players/load/from_id {id:$(id)}

$execute unless data storage pandamium:temp alts[0].flags run tellraw @s [{text:"• "},{storage:"pandamium.db.players:io",nbt:"selected.entry.username",hover_event:{action:"show_text",text:{text:'Click to copy "$(id)" to clipboard'}},extra:[{text:" "},{text:"(",color:"gray",extra:[{storage:"pandamium:temp",nbt:"alts[0].id",bold:true},{text:")"}]}]},{text:" "},{text:"[flags]",color:"dark_gray",hover_event:{action:"show_text",text:"none"}}]
$execute if data storage pandamium:temp alts[0].flags run tellraw @s [{text:"• "},{storage:"pandamium.db.players:io",nbt:"selected.entry.username",hover_event:{action:"show_text",text:{text:'Click to copy "$(id)" to clipboard'}},extra:[{text:" "},{text:"(",color:"gray",extra:[{storage:"pandamium:temp",nbt:"alts[0].id",bold:true},{text:")"}]}]},{text:" "},{text:"[flags]",color:"dark_gray",hover_event:{action:"show_text",text:[{storage:"pandamium:temp",nbt:"alts[0].flags"}]}}]

data remove storage pandamium:temp alts[0]
execute if data storage pandamium:temp alts[0] run function pandamium:triggers/options/print_menu/alts/loop with storage pandamium:temp alts[0]
