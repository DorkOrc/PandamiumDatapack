# arguments: username

$execute unless data storage pandamium.db.players:data username_indexes."$(username)" run return run tellraw @s [{"text":"[admin]","color":"dark_red"},{"text":" There is no tracked user with the username \"$(username)\"!","color":"red"}]

$scoreboard players set $(username) staff_rank 1
$execute as $(username) run kick @s set_rank: staff = helper
