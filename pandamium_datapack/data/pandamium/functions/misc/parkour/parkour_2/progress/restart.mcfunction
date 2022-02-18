scoreboard players reset @s parkour_2.saved_time
scoreboard players reset @s parkour_2.saved_x
scoreboard players reset @s parkour_2.saved_y
scoreboard players reset @s parkour_2.saved_z
scoreboard players set @s parkour.checkpoint 100
scoreboard players set @s parkour.timer_ticks 0
function pandamium:misc/parkour/parkour_2/tp_to_start

execute at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 2
