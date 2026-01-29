# arguments: id

$function pandamium:utils/database/players/load/from_id {id:$(id)}

$execute unless data storage pandamium:temp alts[0].flags run tellraw @s ["• ",[{storage:"pandamium.db.players:io",nbt:"selected.entry.username",interpret:true,hover_event:{action:"show_text",value:{text:'Click to copy "$(id)" to clipboard'}},click_event:{action:"copy_to_clipboard",value:"$(id)"}}," ",[{color:"gray",text:"("},{bold:true,storage:"pandamium:temp",nbt:"alts[0].id"},")"]]," ",{color:"dark_gray",text:"[flags]",hover_event:{action:"show_text",value:"none"}}]
$execute if data storage pandamium:temp alts[0].flags run tellraw @s ["• ",[{storage:"pandamium.db.players:io",nbt:"selected.entry.username",interpret:true,hover_event:{action:"show_text",value:{text:'Click to copy "$(id)" to clipboard'}},click_event:{action:"copy_to_clipboard",value:"$(id)"}}," ",[{color:"gray",text:"("},{bold:true,storage:"pandamium:temp",nbt:"alts[0].id"},")"]]," ",{color:"dark_gray",text:"[flags]",hover_event:{action:"show_text",value:{storage:"pandamium:temp",nbt:"alts[0].flags"}}}]

data remove storage pandamium:temp alts[0]
execute if data storage pandamium:temp alts[0] run function pandamium:triggers/options/print_menu/alts/loop with storage pandamium:temp alts[0]
