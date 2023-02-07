tag @s add sender

execute if score <returned> variable matches 0 if score @s jailed matches 1.. store success score <returned> variable run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]
execute if score <returned> variable matches 0 if score @s tpa = @s id store success score <returned> variable run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" You cannot send a TPA request to yourself!","color":"red"}]

execute if score <returned> variable matches 0 run scoreboard players operation <sender_id> variable = @s id
execute if score <returned> variable matches 0 as @a if score @s tpa_request.sender_id = <sender_id> variable store success score <returned> variable run tellraw @a[tag=sender,limit=1] [{"text":"[TPA]","color":"dark_red"},[{"text":" You have already sent a TPA request to ","color":"red"},{"selector":"@s","color":"red"},"! ",{"text":"[X]","bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/trigger tpa set -3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"gray"},{"text":"Cancel","bold":true}," outgoing TPA Request"]}}]]

execute if score <returned> variable matches 0 run function pandamium:tpa/send_request/find_receiver

tag @s remove sender
