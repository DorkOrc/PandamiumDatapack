# arguments: trigger, name

# check
$execute if score @s trigger_data.$(trigger).cooldown_length matches -1 run tellraw @s [{"text":"[$(name)]","color":"dark_red"},{"text":" You do not have permission to use this trigger!","color":"red"}]
$execute if score @s trigger_data.$(trigger).cooldown_length matches -1 run return 1

$execute if score @s trigger_data.$(trigger).disabled_until matches 1.. if score <current_gametime> global < @s trigger_data.$(trigger).disabled_until run scoreboard players operation <seconds> variable = @s trigger_data.$(trigger).disabled_until
$execute if score @s trigger_data.$(trigger).disabled_until matches 1.. if score <current_gametime> global < @s trigger_data.$(trigger).disabled_until run scoreboard players operation <seconds> variable -= <current_gametime> global
$execute if score @s trigger_data.$(trigger).disabled_until matches 1.. if score <current_gametime> global < @s trigger_data.$(trigger).disabled_until run scoreboard players operation <seconds> variable /= #ticks_per_second constant
$execute if score @s trigger_data.$(trigger).disabled_until matches 1.. if score <current_gametime> global < @s trigger_data.$(trigger).disabled_until run tellraw @s [{"text":"[$(name)]","color":"dark_red"},{"text":" You do not have permission to use this trigger for another ","color":"red","extra":[{"score":{"name":"<seconds>","objective":"variable"},"bold":true}," seconds!"]}]
$execute if score @s trigger_data.$(trigger).disabled_until matches 1.. if score <current_gametime> global < @s trigger_data.$(trigger).disabled_until run return 1

# set cooldown
$execute if score @s trigger_data.$(trigger).cooldown_length matches 1.. run scoreboard players operation @s trigger_data.$(trigger).disabled_until = <current_gametime> global
$execute if score @s trigger_data.$(trigger).cooldown_length matches 1.. run scoreboard players operation @s trigger_data.$(trigger).disabled_until += @s trigger_data.$(trigger).cooldown_length
$execute unless score @s trigger_data.$(trigger).cooldown_length matches 1.. run scoreboard players reset @s trigger_data.$(trigger).disabled_until
return 0
