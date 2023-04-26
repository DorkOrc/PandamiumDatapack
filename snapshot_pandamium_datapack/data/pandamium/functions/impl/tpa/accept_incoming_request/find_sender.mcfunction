scoreboard players set <sender_exists> variable 0
scoreboard players operation <sender_id> variable = @s tpa_request.sender_id
execute as @a if score @s id = <sender_id> variable store success score <sender_exists> variable run function pandamium:impl/tpa/accept_incoming_request/as_sender
execute if score <sender_exists> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" Could not find the sender of the TPA request!","color":"red"}]
