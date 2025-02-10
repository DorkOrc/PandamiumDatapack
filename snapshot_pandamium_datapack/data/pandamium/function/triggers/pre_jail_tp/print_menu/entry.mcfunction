# arguments: id

$tellraw @a[tag=source,limit=1] [{text:" ",color:"yellow"},{text:"[→]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to teleport to\n",color:"blue"},{selector:"@s",color:"blue",bold:true},"'s pre-jail\nlocation in spectator mode"]},click_event:{action:"run_command",command:"trigger pre_jail_tp set $(id)"}}," ",{selector:"@s"}," --- ",{score:{name:"@s",objective:"id"},color:"gold",bold:true}]
