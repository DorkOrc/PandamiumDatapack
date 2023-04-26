execute if score @s parkour matches 1.. unless score @s parkour.checkpoint matches 0.. run function pandamium:impl/triggers/parkour/print_courses_menu
execute if score @s parkour matches 1.. if score @s parkour.checkpoint matches 0.. run function pandamium:impl/triggers/parkour/print_actions_menu

execute if score @s parkour matches -1 if score @s parkour.checkpoint matches 0.. unless score @s parkour.checkpoint matches 100..199 run function pandamium:impl/parkour/actions/return_to_last_checkpoint

execute if score @s parkour matches -102..-101 unless score @s parkour.checkpoint matches 0.. run function pandamium:misc/warp/spawn
execute if score @s parkour matches -101 unless score @s parkour.checkpoint matches 0.. run function pandamium:impl/parkour/parkour_1/tp_to_start
execute if score @s parkour matches -102 unless score @s parkour.checkpoint matches 0.. run function pandamium:impl/parkour/parkour_2/tp_to_start

#

scoreboard players reset @s parkour
scoreboard players enable @s parkour
