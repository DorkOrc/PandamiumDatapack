execute if score @s jailed matches 1.. run return run tellraw @s [{"text":"[RTP]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]
execute if score @s rtp_cooldown matches 1.. run return run function pandamium:triggers/rtp/print_cooldown

function pandamium:misc/rtp/teleport
