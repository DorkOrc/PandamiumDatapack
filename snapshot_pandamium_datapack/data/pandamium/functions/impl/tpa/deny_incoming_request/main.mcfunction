tag @s add receiver

execute unless score @s tpa_request.sender_id matches 1.. run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" You don't have any incoming TPA requests!","color":"red"}]

execute if score @s tpa_request.sender_id matches 1.. run function pandamium:impl/tpa/deny_incoming_request/find_sender

tag @s remove receiver

return 0
