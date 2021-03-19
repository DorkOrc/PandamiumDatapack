tag @s add running_trigger

execute if score @s tpa matches -2..-1 unless score @s tpa_request matches 1.. run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" You don't have any TPA requests!","color":"red"}]

scoreboard players set <sender_exists> variable 0
execute as @a if score @s id = @p[tag=running_trigger] tpa_request run scoreboard players set <sender_exists> variable 1
execute if score @s tpa matches -2..-1 if score @s tpa_request matches 1.. if score <sender_exists> variable matches 0 run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" Could not find the sender of the TPA request!","color":"red"}]

scoreboard players set <receiver_exists> variable 0
execute as @a if score @s tpa_request = @p[tag=running_trigger] id run scoreboard players set <receiver_exists> variable 1
execute if score @s tpa matches -3 if score <receiver_exists> variable matches 0 run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" No players have TPA requests from you!","color":"red"}]

execute if score @s tpa matches -1 if score <sender_exists> variable matches 1 as @a if score @s id = @p[tag=running_trigger] tpa_request run function pandamium:tpa/accept_request
execute if score @s tpa matches -2 if score <sender_exists> variable matches 1 as @a if score @s id = @p[tag=running_trigger] tpa_request run function pandamium:tpa/deny_request
execute if score @s tpa matches -3 if score <receiver_exists> variable matches 1 as @a if score @s tpa_request = @p[tag=running_trigger] id run function pandamium:tpa/cancel_request

tag @s remove running_trigger
scoreboard players reset @s tpa
scoreboard players enable @s tpa
