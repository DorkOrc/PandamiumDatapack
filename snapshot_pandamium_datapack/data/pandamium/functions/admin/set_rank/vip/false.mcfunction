# arguments: username

$scoreboard players reset $(username) vip_rank
$execute as $(username) run kick @s set_rank: vip = false
