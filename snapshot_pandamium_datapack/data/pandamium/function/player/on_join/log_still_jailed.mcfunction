# arguments: id

# log event
function pandamium:utils/get/username
function pandamium:utils/log {args:{message:['event="joined_while_jailed",data={"username":"',{storage:"pandamium:temp",nbt:"username"},'","last_jailed_datetime":"',{score:{name:"@s",objective:"last_jailed.datetime"}},'"}']}}

# inform jailee
tellraw @s [{color:"dark_purple",text:"[Private Info]"},{color:"light_purple",text:" You are jailed! Please contact a staff member."}]

title @s subtitle {color:"light_purple",text:"Please contact a staff member."}
title @s title {color:"dark_purple",text:"You are Jailed"}

# inform online staff
$tellraw @a[predicate=pandamium:player/min_staff_perms/helper] [{color:"dark_gray",text:"[Staff Info] "},[{color:"gray",text:""},{selector:"@s",color:"gray"}," is still jailed! "],{text:"[→]",color:"blue",hover_event:{action:"show_text",value:[{color:"blue",text:"Click to teleport to "},{bold:true,text:"Jail Area"}," in spectator mode"]},click_event:{action:"run_command",command:"trigger spawn set -101"}}," ",{bold:true,color:"dark_purple",text:"[U]",hover_event:{action:"show_text",value:[{color:"dark_purple",text:"Click to unjail "},{bold:true,color:"dark_purple",selector:"@s"}]},click_event:{action:"run_command",command:"trigger unjail set $(id)"}}]
