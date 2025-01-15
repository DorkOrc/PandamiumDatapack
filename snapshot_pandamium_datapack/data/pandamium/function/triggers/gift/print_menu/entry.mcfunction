# arguments: id

$tellraw @a[tag=source,limit=1] [{text:" ",color:"aqua"},{text:"[🎁]",color:"#FF007F",hover_event:{action:"show_text",value:[{text:"Click to gift a reward credit to\n",color:"#FF007F"},{selector:"@s",color:"#FF007F",bold:true}]},click_event:{action:"run_command",command:"trigger gift set $(id)"}},{text:" "},{selector:"@s"},{text:" --- "},{score:{name:"@s",objective:"id"},color:"green",bold:true}]
