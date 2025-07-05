# arguments: username

$scoreboard players set $(username) vanished 1
$function pandamium:utils/log {args:{message:["Set $(username) as vanished"]}}
$vanish on $(username)
