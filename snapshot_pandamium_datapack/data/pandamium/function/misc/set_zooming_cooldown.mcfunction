# arguments: amount

scoreboard players operation <zooming_cooldown_target> variable = <current_gametime> global
$scoreboard players add <zooming_cooldown_target> variable $(amount)
scoreboard players operation @s zooming_until > <zooming_cooldown_target> variable
