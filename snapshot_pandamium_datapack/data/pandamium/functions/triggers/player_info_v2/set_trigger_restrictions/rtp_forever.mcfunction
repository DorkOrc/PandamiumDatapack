# arguments: username

$scoreboard players set $(username) trigger_data.rtp.cooldown_length -1
$scoreboard players reset $(username) trigger_data.rtp.disabled_until
tellraw @s [{"text":"[RTP]","color":"dark_green"},{"text":" Disabled ","color":"green","extra":[{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s RTP trigger!"]}]
