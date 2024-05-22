execute if data storage pandamium:auto_actions actions[0] run function pandamium:triggers/auto_actions_log/print_log/do_menu
execute if score <returned> variable matches 0 run tellraw @s [{"text":"[Auto-Actions Log]","color":"dark_red"},{"text":" There are no entries in the log!","color":"red"}]
