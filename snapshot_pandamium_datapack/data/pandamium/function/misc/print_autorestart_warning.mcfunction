# arguments: time_left

$tellraw @a [{text:"[Warning]",color:"dark_red"},{text:" The server will restart in ",color:"red",extra:[{text:"$(time_left)",bold:true,color:"yellow"},"!"]}]
$function pandamium:utils/log {args:{message:'event="auto_restart_countdown",data={"time_left":"$(time_left)"}'}}
