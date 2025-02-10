scoreboard players set <sender_exists> variable 1

tag @s add sender

function pandamium:impl/tpa/check_can_accept
execute if score <can_accept> variable matches 0 store success score <returned> variable run tellraw @a[tag=receiver,limit=1] [{text:"[TPA]",color:"dark_red"},{text:" You cannot accept this TPA request currently! ",color:"red"},{text:"[❌]",color:"dark_red",hover_event:{action:"show_text",value:[{text:"Click to ",color:"red"},{text:"Deny",bold:true}," incoming TPA Request"]},click_event:{action:"run_command",command:"trigger tpa set -2"}}]

execute as @a[tag=receiver,limit=1] run function pandamium:utils/get/username
data modify storage pandamium:templates macro.username.username set from storage pandamium:temp username
execute if score <returned> variable matches 0 run function pandamium:impl/tpa/accept_incoming_request/do_accept with storage pandamium:templates macro.username

tag @s remove sender
