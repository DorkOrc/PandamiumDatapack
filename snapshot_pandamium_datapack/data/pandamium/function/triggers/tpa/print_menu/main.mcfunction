tellraw @s [{text:"======== ",color:"aqua"},{text:"Teleporting Menu",bold:true}," ========\n",{text:"Player List:",bold:true}]
function pandamium:triggers/tpa/print_menu/list

execute if score @s tpa_request.sender_id matches 1.. run scoreboard players operation <sender_id> variable = @s tpa_request.sender_id
execute if score @s tpa_request.sender_id matches 1.. as @a if score @s id = <sender_id> variable run tellraw @a[tag=source,limit=1] [{text:"\nIncoming Request from ",color:"aqua"},{selector:"@s"},": ",{text:"[✔]",color:"dark_green",hover_event:{action:"show_text",value:[{text:"Click to ",color:"dark_green"},{text:"Accept",bold:true}," incoming TPA Request"]},click_event:{action:"run_command",command:"trigger tpa set -1"}}," ",{text:"[❌]",color:"dark_red",hover_event:{action:"show_text",value:[{text:"Click to ",color:"dark_red"},{text:"Deny",bold:true}," incoming TPA Request"]},click_event:{action:"run_command",command:"trigger tpa set -2"}}]
scoreboard players operation <sender_id> variable = @s id
execute as @a if score @s tpa_request.sender_id = <sender_id> variable run tellraw @a[tag=source,limit=1] [{text:"\nOutgoing Request to ",color:"aqua"},{selector:"@s"},": ",{text:"[❌]",color:"dark_red",hover_event:{action:"show_text",value:[{text:"Click to ",color:"dark_red"},{text:"Cancel",bold:true}," outgoing TPA Request"]},click_event:{action:"run_command",command:"trigger tpa set -3"}}]

data modify storage pandamium:temp username set value "Steve"
execute as @a[tag=!source,sort=random,limit=1] run function pandamium:utils/get/username
execute store result score <random_id> variable run random value 1000..20000
tellraw @s [{text:"\nℹ",color:"blue",hover_event:{action:"show_text",value:[{text:"Ways to send a teleport request:",color:"aqua"},{text:"\n• Click the ",color:"green",extra:[{text:"[→]",color:"blue"}," next to that player's name in the list.\n• Run ",{text:"/trigger",color:"gray",extra:[{text:" tpa",color:"aqua"}," set",{text:" <player id>",color:"yellow"}]},".",{text:"\n  • e.g. ",color:"dark_gray"},{text:"/trigger",color:"gray",extra:[{text:" tpa",color:"aqua"}," set ",{score:{name:"<random_id>",objective:"variable"},color:"yellow"}]},"\n• Run ",{text:"/trigger",color:"gray",extra:[{text:" tpa.",color:"aqua"},{text:"<player username>",color:"dark_aqua"}]},".",{text:"\n  • e.g. ",color:"dark_gray"},{text:"/trigger",color:"gray",extra:[{text:" tpa.",color:"aqua"},{storage:"pandamium:temp",nbt:"username",color:"aqua"}]}]}]}},{text:" ",color:"green",extra:[{text:"Hover here",color:"aqua"}," to learn",{text:" how to send a teleport request",color:"aqua"}," to another player!"]}]
tellraw @s {text:"==================================",color:"aqua"}

return 0
