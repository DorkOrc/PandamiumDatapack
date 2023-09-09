# arguments: trigger_name, run_trigger
$execute if score @s $(trigger_name) matches -2147483648.. unless score @s $(trigger_name) matches 0 run trigger $(run_trigger)
$scoreboard players reset @s $(trigger_name)
$scoreboard players enable @s $(trigger_name)
