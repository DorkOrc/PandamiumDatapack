# arguments: id

# inform jailee
tellraw @s [{text:"[Private Info]",color:"dark_purple"},{text:" You are jailed! Please contact a staff member.",color:"light_purple"}]
title @s subtitle {text:"Please contact a staff member.",color:"light_purple"}
title @s title {text:"You are Jailed",color:"dark_purple"}

# inform online staff
$tellraw @a[scores={staff_perms=1..}] [{text:"[Staff Info] ",color:"dark_gray"},{selector:"@s",color:"gray"},{text:" is still jailed! ",color:"gray"},{text:"[→]",color:"blue",hover_event:{action:"show_text",value:[{text:"Click to teleport to ",color:"blue"},{text:"Jail Area",bold:true},{text:" in spectator mode"}]},click_event:{action:"run_command",command:"trigger spawn set -101"}},{text:" "},{text:"[U]",color:"dark_purple",bold:true,hover_event:{action:"show_text",value:[{text:"Click to unjail ",color:"dark_purple"},{selector:"@s",color:"dark_purple",bold:true}]},click_event:{action:"run_command",command:"trigger unjail set $(id)"}}]
