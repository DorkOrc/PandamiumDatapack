# EVENT: user does /trigger tpa
# RESPONSE: gives a list of player ids.

execute if score @s tpa matches 1 run function pandamium:tpa/print_menu

execute unless score @s tpa = @s id if score @s tpa matches 2.. run function pandamium:tpa/go_check_cooldown

execute if score @s tpa = @s id run tellraw @s [{"text":"[TPA] ","color":"dark_blue"},{"text":"This is not the ID you're looking for. (You cannot tpa to yourself.)","color":"green"}]

# Reset triggers
scoreboard players reset @s tpa
scoreboard players enable @s tpa