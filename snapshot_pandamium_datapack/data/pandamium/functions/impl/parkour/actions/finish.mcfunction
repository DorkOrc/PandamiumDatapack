execute unless score @s parkour.checkpoint matches 0.. run scoreboard players set @s parkour.timer_ticks 2147483647

execute store result score <course_number> variable run scoreboard players operation @s parkour.checkpoint /= #100 constant
scoreboard players add <course_number> variable 1
scoreboard players reset @s parkour.checkpoint
function pandamium:player/teams/enable_collision

scoreboard players operation <timer_negative_seconds> variable = @s parkour.timer_ticks
execute store result score <timer_seconds> variable run scoreboard players operation <timer_negative_seconds> variable /= #ticks_per_second constant
scoreboard players operation <timer_negative_seconds> variable *= #-1 constant

# Update best times
execute if score <course_number> variable matches 3 run function pandamium:impl/parkour/parkour_3/finish

#

scoreboard players reset @s parkour.timer_ticks
execute at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 2
title @s actionbar ""
