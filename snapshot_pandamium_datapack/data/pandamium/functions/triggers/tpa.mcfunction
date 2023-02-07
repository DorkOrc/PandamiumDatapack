scoreboard players set <returned> variable 0

execute if score <disable_tpa> global matches 1 store success score <returned> variable run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" TPA is currently disabled!","color":"red"}]

# ID List
execute if score <returned> variable matches 0 if score @s tpa matches 1 store success score <returned> variable run function pandamium:tpa/print_menu

# Sending request
execute if score <returned> variable matches 0 if score @s tpa matches 2.. run function pandamium:tpa/send_request/main

# Interact with requests
execute if score <returned> variable matches 0 if score @s tpa matches -1 run function pandamium:tpa/accept_incoming_request/main
execute if score <returned> variable matches 0 if score @s tpa matches -2 run function pandamium:tpa/deny_incoming_request/main
execute if score <returned> variable matches 0 if score @s tpa matches -3 run function pandamium:tpa/cancel_outgoing_request/main

execute if score <returned> variable matches 0 run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" Something went wrong! Please yell at James about it.","color":"red"}]

#
scoreboard players reset @s tpa
scoreboard players enable @s tpa
