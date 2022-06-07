execute if score @s parkour matches 1.. unless score @s parkour.checkpoint matches 0.. run function pandamium:misc/parkour/print_menu

execute if score @s parkour matches 1.. if score @s parkour.checkpoint matches 0.. run tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Parkour","bold":true}," ========"]
execute if score @s parkour matches 1.. if score @s parkour.checkpoint matches 0.. unless score @s parkour.checkpoint matches 100..199 run tellraw @s [{"text":"","color":"green"},{"text":"[Return to Last Checkpoint]","color":"dark_aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to return to last checkpoint","color":"dark_aqua"}]},"clickEvent":{"action":"run_command","value":"/trigger parkour set -1"}},"  |  ",{"text":"[Quit]","color":"red","hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"red"},{"text":"Quit","bold":true}," the course"]},"clickEvent":{"action":"run_command","value":"/trigger parkour.quit"}},"  |  ",{"text":"[Restart]","color":"dark_aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"dark_aqua"},{"text":"Restart","bold":true}," this course"]},"clickEvent":{"action":"run_command","value":"/trigger parkour.restart"}}]
execute if score @s parkour matches 1.. if score @s parkour.checkpoint matches 100..199 run tellraw @s [{"text":"","color":"green"},{"text":"[Save Progress and Quit]","color":"red","hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"red"},{"text":"Quit","bold":true}," the course",{"text":"\nYour position and time will be saved, and restored when you start the course again.","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/trigger parkour.quit"}},"  |  ",{"text":"[Restart]","color":"dark_red","hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"dark_red"},{"text":"Restart","bold":true}," this course",[{"text":"\nAny saved progress will be ","color":"gray"},{"text":"lost permanently","underlined":true},"."]]},"clickEvent":{"action":"run_command","value":"/trigger parkour.restart"}}]
execute if score @s parkour matches 1.. if score @s parkour.checkpoint matches 0.. run tellraw @s {"text":"=========================","color":"aqua"}

execute if score @s parkour matches -1 if score @s parkour.checkpoint matches 0.. unless score @s parkour.checkpoint matches 100..199 run function pandamium:misc/parkour/actions/return_to_last_checkpoint

execute if score @s parkour matches -102..-101 unless score @s parkour.checkpoint matches 0.. run function pandamium:misc/teleport/warp/spawn
execute if score @s parkour matches -101 unless score @s parkour.checkpoint matches 0.. run function pandamium:misc/parkour/parkour_1/tp_to_start
execute if score @s parkour matches -102 unless score @s parkour.checkpoint matches 0.. run function pandamium:misc/parkour/parkour_2/tp_to_start

#

scoreboard players reset @s parkour
scoreboard players enable @s parkour
