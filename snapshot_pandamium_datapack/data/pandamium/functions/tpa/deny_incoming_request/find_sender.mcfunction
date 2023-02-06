scoreboard players set <player_exists> variable 0
scoreboard players operation <sender_id> variable = @s tpa_request.sender_id
execute as @a if score @s id = <sender_id> variable store success score <player_exists> variable run function pandamium:tpa/deny_incoming_request/as_sender
execute if score <player_exists> variable matches 1 run scoreboard players reset @s tpa_request.sender_id
execute if score <player_exists> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" Could not find the sender of the TPA request!","color":"red"}]
