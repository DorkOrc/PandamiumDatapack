execute unless score @s home_cooldown matches 1.. run tellraw @s [{"text":"[Home]","color":"dark_green"},{"text":" You do not have a cooldown!","color":"green"}]
execute if score @s home_cooldown matches 1.. run function pandamium:home/print_cooldown

scoreboard players reset @s check_cooldown
scoreboard players enable @s check_cooldown