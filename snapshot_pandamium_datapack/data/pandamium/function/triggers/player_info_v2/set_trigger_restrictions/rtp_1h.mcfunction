# arguments: username

$scoreboard players set $(username) trigger_data.rtp.cooldown_length 72000
tellraw @s [{"text":"[RTP]","color":"dark_green"},{"text":" Set ","color":"green","extra":[{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s RTP trigger cooldown to ",{"text":"1 hour","bold":true},"!"]}]
