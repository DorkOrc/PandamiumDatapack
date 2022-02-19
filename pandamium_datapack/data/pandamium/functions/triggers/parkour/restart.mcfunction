execute if score @s parkour.checkpoint matches 0..99 run function pandamium:misc/parkour/parkour_1/restart
execute if score @s parkour.checkpoint matches 0..99 run tellraw @s [{"text":"[Parkour] ","color":"dark_green"},{"text":"Restarted the Caves & Cliffs Parkour!","color":"green"}]

execute if score @s parkour.checkpoint matches 100..199 run function pandamium:misc/parkour/parkour_2/progress/restart
execute if score @s parkour.checkpoint matches 100..199 run tellraw @s [{"text":"[Parkour] ","color":"dark_green"},[{"text":"Restart the Monstrosity Parkour! Progress was ","color":"green"},{"text":"reset","color":"aqua"},"."]]

#

scoreboard players reset @s parkour.restart
scoreboard players enable @s parkour.restart
