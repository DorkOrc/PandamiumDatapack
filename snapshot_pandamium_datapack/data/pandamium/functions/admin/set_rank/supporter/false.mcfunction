# arguments: username

$scoreboard players reset $(username) donator_rank
$execute as $(username) run kick @s set_rank: supporter = false
