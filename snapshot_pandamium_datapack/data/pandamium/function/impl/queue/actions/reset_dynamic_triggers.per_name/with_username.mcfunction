# arguments: username

$scoreboard players reset @s[scores={optn.disable_dynamic_triggers.tpa_names=1..}] tpa.$(username)
$scoreboard players reset @s[scores={optn.disable_dynamic_triggers.punishments=1..}] jail.$(username)
$scoreboard players reset @s[scores={optn.disable_dynamic_triggers.punishments=1..}] unjail.$(username)
$scoreboard players reset @s[scores={optn.disable_dynamic_triggers.punishments=1..}] kick.$(username)
$scoreboard players reset @s[scores={optn.disable_dynamic_triggers.punishments=1..}] ban.$(username)
$scoreboard players reset @s[scores={optn.disable_dynamic_triggers.player_info=1..}] player_info.$(username)
