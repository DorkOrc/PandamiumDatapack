tag @s add receiver

execute unless score @s tpa_request.sender_id matches 1.. run tellraw @s [{text:"[TPA]",color:"dark_red"},{text:" You don't have any incoming TPA requests!",color:"red"}]

execute if score @s tpa_request.sender_id matches 1.. run function pandamium:impl/tpa/accept_incoming_request/find_sender

tag @s remove receiver

execute unless score @s tpa matches -102 run dialog clear @s
execute if score @s tpa matches -102 run function pandamium:triggers/tpa/print_menu/main

return 0
