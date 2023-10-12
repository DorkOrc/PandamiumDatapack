# fail if disabled
execute if score <disable_tpa> global matches 1 run return run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" TPA is currently disabled!","color":"red"}]

# print ID list
execute if score @s tpa matches 1 run return run function pandamium:triggers/tpa/print_menu/main

# send request
execute if score @s tpa matches 2.. run return run function pandamium:impl/tpa/send_request/main

# interact with requests
execute if score @s tpa matches -1 run return run function pandamium:impl/tpa/accept_incoming_request/main
execute if score @s tpa matches -2 run return run function pandamium:impl/tpa/deny_incoming_request/main
execute if score @s tpa matches -3 run return run function pandamium:impl/tpa/cancel_outgoing_request/main
execute if score @s tpa matches ..-4 run return run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# else
tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" Something went wrong! Please yell at James about it.","color":"red"}]
