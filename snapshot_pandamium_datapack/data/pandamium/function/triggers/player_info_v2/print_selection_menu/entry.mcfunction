# arguments: id

$tellraw @a[tag=source,limit=1] [{text:" ",color:"yellow"},{text:"[👉]",color:"yellow",hover_event:{action:"show_text",text:[{text:"Click to see player info for\n",color:"yellow"},{selector:"@s",color:"yellow",bold:true}]},click_event:{action:"run_command",command:"trigger player_info_v2 set $(id)"}},{text:" "},{selector:"@s"},{text:" --- "},{score:{name:"@s",objective:"id"},color:"gold",bold:true}]
