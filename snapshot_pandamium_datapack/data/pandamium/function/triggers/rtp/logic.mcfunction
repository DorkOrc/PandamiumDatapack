execute if score @s jailed matches 1.. run return run tellraw @s [{text:"[RTP]",color:"dark_red"},{text:" You cannot use this trigger in jail!",color:"red"}]

execute store result storage pandamium:local functions."pandamium:triggers/rtp/*".user_id int 1 run scoreboard players get @s id
execute store success score <in_queue> variable run function pandamium:triggers/rtp/check_for_scheduled_rtp with storage pandamium:local functions."pandamium:triggers/rtp/*"
execute if score <in_queue> variable matches 1 run return run tellraw @s [{text:"[RTP]",color:"dark_red"},{text:" You are already scheduled to be teleported!",color:"red"}]

execute if score @s rtp_cooldown matches 1.. run return run function pandamium:triggers/rtp/print_cooldown

tellraw @s [{color:"dark_green",text:"[RTP]"},{color:"green",text:" Searching for a suitable location..."}]
function pandamium:misc/rtp
