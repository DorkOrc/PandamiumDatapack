tag @s add sender

scoreboard players set <receiver_exists> variable 0
scoreboard players operation <sender_id> variable = @s id
execute as @a if score @s tpa_request.sender_id = <sender_id> variable run function pandamium:impl/tpa/cancel_outgoing_request/as_receiver
execute if score <receiver_exists> variable matches 0 run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" You don't have any outgoing TPA requests!","color":"red"}]

tag @s remove sender

return 0
