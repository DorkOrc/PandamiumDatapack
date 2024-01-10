# arguments: username, id

scoreboard players set <player_exists> variable 1

execute if data storage pandamium:temp entries[-1].triggers[0] run function pandamium:impl/database/cache/every_tick/loop_triggers

$scoreboard players set @a[scores={tpa_$(username)=1..}] tpa $(id)
$scoreboard players set @a tpa_$(username) 0
$scoreboard players enable @a tpa_$(username)
$scoreboard players reset @s tpa_$(username)
