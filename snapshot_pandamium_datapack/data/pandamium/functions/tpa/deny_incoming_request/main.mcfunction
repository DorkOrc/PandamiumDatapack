tag @s add receiver

execute unless score @s tpa_request.sender_id matches 1.. store success score <returned> variable run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" You don't have any incoming TPA requests!","color":"red"}]

execute if score <returned> variable matches 0 run function pandamium:tpa/deny_incoming_request/find_sender

tag @s remove receiver
