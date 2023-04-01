scoreboard players operation <seconds> variable = @s rtp_cooldown
scoreboard players operation <seconds> variable /= #ticks_per_second constant
scoreboard players add <seconds> variable 1

execute if score <seconds> variable matches 1 run tellraw @s [{"text":"[RTP]","color":"dark_red"},[{"text":" You cannot use the RTP for ","color":"red"},{"text":"1","bold":true}," more second!"]]
execute if score <seconds> variable matches 2.. run tellraw @s [{"text":"[RTP]","color":"dark_red"},[{"text":" You cannot use the RTP for ","color":"red"},{"score":{"name":"<seconds>","objective":"variable"},"bold":true}," more seconds!"]]
