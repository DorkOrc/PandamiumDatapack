# EVENT: user does /trigger tpa
# RESPONSE: gives a list of player ids.

scoreboard players set @s temp_1 0
execute at @a if score @s tpa = @p id run scoreboard players set @s temp_1 1
execute if score @s temp_1 matches 0 run tellraw @s [{"text":"","color":"red"},{"text": "[TPA]", "color":"dark_red"}," No player found with that ID."]

execute if score @s tpa matches 1 run function pandamium:tpa/print_menu

execute if score @s tpa matches 2.. run function pandamium:tpa/check_cooldown

scoreboard players reset @s tpa
scoreboard players enable @s tpa
