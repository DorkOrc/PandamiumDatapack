# arguments: id

$tellraw @a[tag=source,limit=1] [{text:" ",color:"yellow"},{text:"[INV]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to take ",color:"blue"},{selector:"@s",color:"blue",bold:true},"'s\ninventory"]},click_event:{action:"run_command",command:"trigger take_inventory set $(id)"}}," ",{text:"[EC]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to take ",color:"blue"},{selector:"@s",color:"blue",bold:true},"'s\nender chest"]},click_event:{action:"run_command",command:"trigger take_enderchest set $(id)"}}," - ",{selector:"@s"}]
