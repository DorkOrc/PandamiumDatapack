execute store result score <course_number> variable run scoreboard players operation @s parkour.checkpoint %= <100> variable
scoreboard players add <course_number> variable 1

scoreboard players reset @s parkour.checkpoint
scoreboard players reset @s parkour.timer_ticks
scoreboard players reset @s parkour_end

title @s actionbar ""
