execute store success score <blocked> variable if score @s id = <source_id> variable
execute unless score @s id matches 2.. run scoreboard players set <blocked> variable 1
execute if score @s jailed matches 1.. run scoreboard players set <blocked> variable 1
execute if score <blocked> variable matches 1 run tellraw @a[tag=source,limit=1] [{text:" ",color:"yellow"},{text:"[J]",color:"gray",hover_event:{action:"show_text",value:[{text:"You cannot jail this player.",color:"gray"}]}}," ",{selector:"@s"}," --- ",{score:{name:"@s",objective:"id"},color:"gold",bold:true}]
execute if score <blocked> variable matches 1 run return 0

$tellraw @a[tag=source,limit=1] [{text:" ",color:"yellow"},{text:"[J]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"Click to jail ",color:"dark_purple"},{selector:"@s",color:"dark_purple",bold:true}]},click_event:{action:"run_command",command:"trigger jail set $(id)"}}," ",{selector:"@s"}," --- ",{score:{name:"@s",objective:"id"},color:"gold",bold:true}]
