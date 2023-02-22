function pandamium:misc/sit/main
execute if score <sat> variable matches 0 run tellraw @s [{"text":"[Sit]","color":"dark_red"},{"text":" You cannot sit currently!","color":"red"}]

scoreboard players reset @s sit
scoreboard players enable @s sit
