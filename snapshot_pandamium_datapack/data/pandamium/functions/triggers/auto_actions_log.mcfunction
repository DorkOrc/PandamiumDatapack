scoreboard players set <returned> variable 0

# print log
execute if score @s auto_actions_log matches 1.. run function pandamium:impl/triggers/auto_actions/print_log/main

# inspect entry
execute if score @s auto_actions_log matches ..-1 run function pandamium:impl/triggers/auto_actions_log/inspect_entry/main

execute if score <returned> variable matches 0 run tellraw @s [{"text":"[Auto-Actions]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

scoreboard players reset @s auto_actions_log
scoreboard players enable @s auto_actions_log
