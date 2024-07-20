function pandamium:utils/triggers/disable_player_suffixes
tag @s add source

function pandamium:triggers/staff_menu/print_menu/main

tag @s remove source
scoreboard players reset @s staff_menu
scoreboard players enable @s staff_menu
