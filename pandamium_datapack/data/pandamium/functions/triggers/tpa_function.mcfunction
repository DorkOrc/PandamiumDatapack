tag @s add running_trigger

execute if score @s tpa matches -2..-1 unless score @s tpa_request matches 1.. run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" You don't have any incoming TPA requests!","color":"red"}]

scoreboard players set <player_exists> variable 0
execute as @a if score @s id = @p[tag=running_trigger] tpa_request store success score <player_exists> variable run tag @s add selected_player
execute if score @s tpa matches -2..-1 if score @s tpa_request matches 1.. if score <player_exists> variable matches 0 run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" Could not find the sender of the TPA request!","color":"red"}]

scoreboard players set <player_exists> variable 0
execute as @a if score @s tpa_request = @p[tag=running_trigger] id store success score <player_exists> variable run tag @s add selected_player
execute if score @s tpa matches -3 if score <player_exists> variable matches 0 run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" You don't have any outgoing TPA requests!","color":"red"}]

execute if score @s tpa matches -1 if score <player_exists> variable matches 1 as @p[tag=selected_player] run function pandamium:tpa/accept_request
execute if score @s tpa matches -2 if score <player_exists> variable matches 1 as @p[tag=selected_player] run function pandamium:tpa/deny_request
execute if score @s tpa matches -3 if score <player_exists> variable matches 1 as @p[tag=selected_player] run function pandamium:tpa/cancel_request

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s tpa
scoreboard players enable @s tpa
