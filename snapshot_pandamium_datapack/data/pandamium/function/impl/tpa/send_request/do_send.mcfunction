scoreboard players set @s tpa_request.time 1200
scoreboard players operation @s tpa_request.sender_id = @a[tag=sender,limit=1] id

tellraw @a[tag=sender,limit=1] [{text:"",color:"green"},{text:"[TPA]",color:"dark_green"}," Sent ",{selector:"@s"}," a ",{text:"TPA request",color:"aqua"},"! ",{text:"[❌]",color:"gray",hover_event:{action:"show_text",value:[{text:"Click to ",color:"gray"},{text:"Cancel",bold:true}," outgoing TPA Request"]},click_event:{action:"run_command",command:"trigger tpa set -3"}}]
tellraw @s [{text:"",color:"green"},{text:"[TPA] ",color:"blue"},{selector:"@a[tag=sender,limit=1]"}," sent you a ",{text:"TPA request",color:"aqua"},"! ",{text:"[✔]",color:"dark_green",hover_event:{action:"show_text",value:[{text:"Click to ",color:"dark_green"},{text:"Accept",bold:true}," incoming TPA Request"]},click_event:{action:"run_command",command:"trigger tpa set -1"}}," ",{text:"[❌]",color:"red",hover_event:{action:"show_text",value:[{text:"Click to ",color:"red"},{text:"Deny",bold:true}," incoming TPA Request"]},click_event:{action:"run_command",command:"trigger tpa set -2"}},""]
scoreboard players set <returned> variable 1

execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
