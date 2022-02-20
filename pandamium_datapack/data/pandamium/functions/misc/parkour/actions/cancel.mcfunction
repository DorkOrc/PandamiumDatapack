execute if score @s parkour.checkpoint matches 100..199 run function pandamium:misc/parkour/parkour_2/progress/save
execute if score @s parkour.checkpoint matches 100..199 run tellraw @s [{"text":"[Parkour] ","color":"aqua"},{"text":"Progress was saved!","color":"dark_aqua"}]

scoreboard players reset @s parkour.checkpoint
scoreboard players reset @s parkour.timer_ticks
scoreboard players reset @s parkour.quit
scoreboard players reset @s parkour.restart

title @s actionbar ""
