# EVENT: user does /trigger tpa
# RESPONSE: gives a list of player ids.

execute if score @s tpa matches 1 run function pandamium:tpa/print_menu

execute if score @s tpa matches 2.. run function pandamium:tpa/check_cooldown

scoreboard players reset @s tpa
scoreboard players enable @s tpa
