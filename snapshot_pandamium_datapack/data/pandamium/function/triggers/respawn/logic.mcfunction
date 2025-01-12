execute if score @s jailed matches 1.. run return run tellraw @s [{text:"[Respawn]",color:"dark_red"},{text:" You cannot use this trigger in jail!",color:"red"}]
execute if score @s disable_keep_inventory matches 1 run return run tellraw @s [{text:"[Respawn]",color:"dark_red",hover_event:{action:"show_text",text:[{text:"/trigger ",color:"gray"},{text:"options",color:"aqua"}]},click_event:{action:"run_command",command:"trigger options"}},{text:" You cannot use this trigger because you have disabled Keep-Inventory for yourself! You must re-enable it to use this trigger.",color:"red"}]

function pandamium:player/respawn
