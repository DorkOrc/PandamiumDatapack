scoreboard players set @s tpa_request.time 1200
scoreboard players operation @s tpa_request.sender_id = @a[tag=sender,limit=1] id

tellraw @a[tag=sender,limit=1] [{text:"",color:"green"},{text:"[TPA]",color:"dark_green"},{text:" Sent "},{selector:"@s"},{text:" a "},{text:"TPA request",color:"aqua"},{text:"! "},{text:"[❌]",color:"gray",hover_event:{action:"show_text",text:[{text:"Click to ",color:"gray"},{text:"Cancel",bold:true},{text:" outgoing TPA Request"}]},click_event:{action:"run_command",command:"trigger tpa set -3"}}]
tellraw @s [{text:"",color:"green"},{text:"[TPA] ",color:"blue"},{selector:"@a[tag=sender,limit=1]"},{text:" sent you a "},{text:"TPA request",color:"aqua"},{text:"! "},{text:"[✔]",color:"dark_green",hover_event:{action:"show_text",text:[{text:"Click to ",color:"dark_green"},{text:"Accept",bold:true},{text:" incoming TPA Request"}]},click_event:{action:"run_command",command:"trigger tpa set -1"}},{text:" "},{text:"[❌]",color:"red",hover_event:{action:"show_text",text:[{text:"Click to ",color:"red"},{text:"Deny",bold:true},{text:" incoming TPA Request"}]},click_event:{action:"run_command",command:"trigger tpa set -2"}},{text:""}]
scoreboard players set <returned> variable 1

execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
