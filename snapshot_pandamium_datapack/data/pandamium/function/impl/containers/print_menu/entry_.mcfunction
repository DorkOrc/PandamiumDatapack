$tellraw @a[tag=source,limit=1] [{text:" ",color:"yellow"},{text:"[INV]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to inspect ",color:"blue"},{selector:"@s",color:"blue",bold:true},{text:"'s\ninventory"}]},click_event:{action:"run_command",command:"trigger inspect_inventory set $(id)"}},{text:" "},{text:"[EC]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to inspect ",color:"blue"},{selector:"@s",color:"blue",bold:true},{text:"'s\nender chest"}]},click_event:{action:"run_command",command:"trigger inspect_enderchest set $(id)"}},{text:" - "},{selector:"@s"}]
