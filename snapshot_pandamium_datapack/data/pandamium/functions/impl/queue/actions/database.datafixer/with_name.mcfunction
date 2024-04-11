# arguments: name

$execute unless score $(name) optn.disable_dynamic_triggers.staff matches 1 run return run scoreboard players reset $(name) optn.disable_dynamic_triggers.staff
$scoreboard players reset $(name) optn.disable_dynamic_triggers.staff

$scoreboard players set $(name) optn.disable_dynamic_triggers.player_info 1
$scoreboard players set $(name) optn.disable_dynamic_triggers.punishments 1
