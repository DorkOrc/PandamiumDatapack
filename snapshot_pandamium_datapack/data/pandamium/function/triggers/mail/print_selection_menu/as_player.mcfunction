execute if score @s id = <source_id> variable run return run tellraw @a[tag=source,limit=1] [{text:" ",color:"aqua"},{text:"[✉+]",color:"gray",hover_event:{action:"show_text",value:[{text:"You cannot send mail to\nyourself.",color:"gray"}]}},{text:" "},{selector:"@s"},{text:" --- "},{score:{name:"@s",objective:"id"},color:"green",bold:true}]
execute unless score @s id matches 2.. run return run tellraw @a[tag=source,limit=1] [{text:" ",color:"aqua"},{text:"[✉+]",color:"gray",hover_event:{action:"show_text",value:[{text:"You cannot send mail to this\nplayer.",color:"gray"}]}},{text:" "},{selector:"@s"},{text:" --- "},{score:{name:"@s",objective:"id"},color:"green",bold:true}]

execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players get @s id
function pandamium:triggers/mail/print_selection_menu/entry with storage pandamium:templates macro.id
