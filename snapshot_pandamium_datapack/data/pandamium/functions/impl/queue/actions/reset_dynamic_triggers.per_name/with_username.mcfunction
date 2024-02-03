# arguments: username

$scoreboard players reset @s[scores={optn.disable_dynamic_triggers.tpa_names=1..}] tpa_$(username)
$scoreboard players reset @s[scores={optn.disable_dynamic_triggers.staff=1..}] jail_$(username)
$scoreboard players reset @s[scores={optn.disable_dynamic_triggers.staff=1..}] unjail_$(username)
$scoreboard players reset @s[scores={optn.disable_dynamic_triggers.staff=1..}] kick_$(username)
$scoreboard players reset @s[scores={optn.disable_dynamic_triggers.staff=1..}] ban_$(username)
$scoreboard players reset @s[scores={optn.disable_dynamic_triggers.staff=1..}] player_info_$(username)
