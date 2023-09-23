execute if score @s options matches 1.. unless score @s options matches 2..2 run function pandamium:triggers/options/print_menu/normal
execute if score @s options matches 2 run function pandamium:triggers/options/print_menu/staff

execute if score @s options matches ..-1 run function pandamium:triggers/options/run_negative_input

scoreboard players reset @s options
scoreboard players enable @s options
