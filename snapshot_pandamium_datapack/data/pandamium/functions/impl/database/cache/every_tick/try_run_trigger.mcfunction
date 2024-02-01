# arguments: alias, trigger, value
$execute if score @s $(alias) matches -2147483648.. unless score @s $(alias) matches 0 run trigger $(trigger) set $(value)
$scoreboard players reset @s $(alias)
$scoreboard players enable @s $(alias)
