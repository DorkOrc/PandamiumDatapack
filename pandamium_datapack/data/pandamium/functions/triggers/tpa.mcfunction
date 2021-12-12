tag @s add running_trigger

execute if score @s tpa matches 1 run function pandamium:tpa/print_menu

execute if score @s tpa matches 2.. if score @s tpa = @s id run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" You cannot send a TPA request to yourself!","color":"red"}]
execute if score @s tpa matches 2.. unless score @s tpa = @s id run function pandamium:tpa/check_cooldown

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s tpa
scoreboard players enable @s tpa
