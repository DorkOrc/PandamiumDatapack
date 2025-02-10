# arguments: id

$tellraw @a[scores={staff_perms=1..}] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{selector:"@s",color:"gray"},"'s id is ",{score:{objective:"id",name:"@s"},bold:true},"! ",{text:"[→]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to teleport to\n",color:"blue"},{selector:"@s",color:"blue",bold:true}," in spectator\nmode"]},click_event:{action:"run_command",command:"trigger tp set $(id)"}}]
