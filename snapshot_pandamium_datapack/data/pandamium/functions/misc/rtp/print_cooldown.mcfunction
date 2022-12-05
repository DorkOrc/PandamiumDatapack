scoreboard players operation <seconds> variable = @s rtp_cooldown
scoreboard players operation <seconds> variable /= #ticks_per_second constant

tellraw @s [{"text":"[RTP]","color":"dark_red"},[{"text":" You cannot use the RTP for ","color":"red"},{"score":{"name":"<seconds>","objective":"variable"},"bold":true}," more seconds!"]]
