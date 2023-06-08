scoreboard players set <returned> variable 0
tag @s add source

execute if score <disable_tpa> global matches 1 store success score <returned> variable run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" TPA is currently disabled!","color":"red"}]

# ID List
execute if score <returned> variable matches 0 if score @s tpa matches 1 store success score <returned> variable run function pandamium:triggers/tpa/print_menu/main

# Sending request
execute if score <returned> variable matches 0 if score @s tpa matches -1060..-1001 run function pandamium:triggers/tpa/select_player_from_session_id
execute if score <returned> variable matches 0 if score @s tpa matches 2.. run function pandamium:impl/tpa/send_request/main

# Interact with requests
execute if score <returned> variable matches 0 if score @s tpa matches -1 run function pandamium:impl/tpa/accept_incoming_request/main
execute if score <returned> variable matches 0 if score @s tpa matches -2 run function pandamium:impl/tpa/deny_incoming_request/main
execute if score <returned> variable matches 0 if score @s tpa matches -3 run function pandamium:impl/tpa/cancel_outgoing_request/main

execute if score <returned> variable matches 0 if score @s tpa matches ..-4 store success score <returned> variable run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score <returned> variable matches 0 run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" Something went wrong! Please yell at James about it.","color":"red"}]

#

tag @s remove source
scoreboard players reset @s tpa
scoreboard players enable @s tpa
