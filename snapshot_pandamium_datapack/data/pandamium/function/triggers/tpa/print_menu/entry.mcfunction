# arguments: id

$tellraw @a[tag=source,limit=1] [{text:" ",color:"aqua"},{text:"[→]",color:"blue",hover_event:{action:"show_text",text:[{text:"Click to send a teleport request\nto ",color:"blue"},{selector:"@s",color:"blue",bold:true}]},click_event:{action:"run_command",command:"trigger tpa set $(id)"}},{text:" "},{selector:"@s"},{text:" --- "},{score:{name:"@s",objective:"id"},color:"green",bold:true}]
