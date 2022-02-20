scoreboard players operation @s parkour.timer_ticks = @s parkour_2.saved_time
scoreboard players operation @s parkour.checkpoint = @s parkour_2.saved_checkpoint
# Teleport is scheduled to the begining of the next tick (via this queue) because the advancement trigger, enter_block, happens at the very end of the tick, resulting in "Player moved wrongly" warnings, jittering and sometimes the teleport failing outright
data modify storage pandamium:queue queue append value {action:"teleport_player",allow_parkour_teleport:1b,destination:[I;0,0,0,0]}
execute store result storage pandamium:queue queue[-1].player int 1 run scoreboard players get @s id
execute store result storage pandamium:queue queue[-1].destination[0] int 1 run scoreboard players get @s parkour_2.saved_x
execute store result storage pandamium:queue queue[-1].destination[1] int 1 run scoreboard players get @s parkour_2.saved_y
execute store result storage pandamium:queue queue[-1].destination[2] int 1 run scoreboard players get @s parkour_2.saved_z

tellraw @s [{"text":"[Parkour] ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger parkour.restart"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"dark_red"},{"text":"Restart","bold":true}," this course",[{"text":"\nAny saved progress will be ","color":"gray"},{"text":"lost permanently","underlined":true},"."]]}},[{"text":"Progress was restored from the last time you attempted this course! To ","color":"dark_aqua"},{"text":"restart","color":"dark_red"},", click ",{"text":"here","color":"aqua"},"."]]
