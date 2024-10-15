scoreboard players set <returned> variable 0

# print log
execute if score @s auto_actions_log matches 1.. run return run function pandamium:triggers/auto_actions_log/print_log/main

# inspect entry
execute if score @s auto_actions_log matches ..-1 run return run function pandamium:triggers/auto_actions_log/inspect_entry/main
