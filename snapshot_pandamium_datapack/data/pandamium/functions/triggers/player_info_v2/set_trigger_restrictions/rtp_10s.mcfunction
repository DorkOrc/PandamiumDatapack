# arguments: username

$scoreboard players reset $(username) trigger_data.rtp.cooldown_length
$scoreboard players reset $(username) trigger_data.rtp.disabled_until
tellraw @s [{"text":"[RTP]","color":"dark_green"},{"text":" Set ","color":"green","extra":[{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s RTP trigger cooldown to ",{"text":"10 seconds","bold":true},"!"]}]
