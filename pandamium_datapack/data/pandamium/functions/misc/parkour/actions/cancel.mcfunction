execute store result score <course_number> variable run scoreboard players operation @s parkour.checkpoint /= <100> variable
scoreboard players add <course_number> variable 1

execute if score <course_number> variable matches 2 run function pandamium:misc/parkour/parkour_2/progress/save
execute if score <course_number> variable matches 2 run tellraw @s [{"text":"[Parkour] ","color":"aqua"},{"text":"Progress was saved!","color":"dark_aqua"}]

scoreboard players reset @s parkour.checkpoint
scoreboard players reset @s parkour.timer_ticks
scoreboard players reset @s parkour.quit
scoreboard players reset @s parkour.restart

title @s actionbar ""
