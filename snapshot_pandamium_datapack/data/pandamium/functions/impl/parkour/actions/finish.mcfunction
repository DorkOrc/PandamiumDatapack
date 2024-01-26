execute unless score @s parkour.checkpoint matches 0.. run scoreboard players set @s parkour.timer_ticks 2147483647

execute store result score <course_number> variable run scoreboard players operation @s parkour.checkpoint /= #100 constant
scoreboard players add <course_number> variable 1

# celebrate
execute if score <course_number> variable matches 3 run function pandamium:impl/parkour/parkour_3/finish

execute at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 2

# reset state
function pandamium:player/teams/enable_collision
scoreboard players reset @s parkour.timer_ticks
scoreboard players reset @s parkour.checkpoint
scoreboard players reset @s parkour.falls
scoreboard players reset @s parkour.has_fallen
scoreboard players reset @s parkour_quit
scoreboard players reset @s parkour_restart
title @s actionbar ""
