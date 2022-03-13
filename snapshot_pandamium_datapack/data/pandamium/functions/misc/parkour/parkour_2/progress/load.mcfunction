scoreboard players operation @s parkour.timer_ticks = @s parkour_2.saved_time
scoreboard players operation @s parkour.checkpoint = @s parkour_2.saved_checkpoint

execute store result score <tp_x> variable run scoreboard players get @s parkour_2.saved_x
execute store result score <tp_y> variable run scoreboard players get @s parkour_2.saved_y
execute store result score <tp_z> variable run scoreboard players get @s parkour_2.saved_z
scoreboard players set <tp_d> variable 0

scoreboard players set <parkour.allow_teleport> variable 1
function pandamium:misc/teleport/to_scores/main
scoreboard players reset <parkour.allow_teleport> variable

tellraw @s [{"text":"[Parkour] ","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger parkour.restart"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"dark_red"},{"text":"Restart","bold":true}," this course",[{"text":"\nAny saved progress will be ","color":"gray"},{"text":"lost permanently","underlined":true},"."]]}},[{"text":"Progress was restored from the last time you attempted this course! To ","color":"dark_aqua"},{"text":"restart","color":"dark_red"},", click ",{"text":"here","color":"aqua"},"."]]

execute if score @s parkour.checkpoint matches 101 run function pandamium:misc/parkour/actions/unequip_armour
