# arguments: username

$scoreboard players set $(username) trigger_data.rtp.cooldown_length 6000
tellraw @s [{text:"[RTP]",color:"dark_green"},{text:" Set ",color:"green",extra:[{storage:"pandamium:temp",nbt:"target",interpret:true},{text:"'s RTP trigger cooldown to "},{text:"5 minutes",bold:true},{text:"!"}]}]
