execute if score @s options matches 1.. run function pandamium:triggers/options/print_menu
execute if score @s options matches ..-1 run function pandamium:triggers/options/run_negative_input

scoreboard players reset @s options
scoreboard players enable @s options
