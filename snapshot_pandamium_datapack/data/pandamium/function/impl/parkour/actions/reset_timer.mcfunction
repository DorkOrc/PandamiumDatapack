execute if score @s parkour.timer_ticks matches 20.. at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 2
scoreboard players set @s parkour.timer_ticks 0
scoreboard players set @s parkour.falls 0

execute if score @s parkour.checkpoint matches 300..399 run function pandamium:impl/parkour/parkour_4/stored_run/remove_current_run
