execute if score @s jailed matches 1.. run return run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]
execute if score @s tpa = @s id run return run tellraw @s [{"text":"[TPA]","color":"dark_red"},{"text":" You cannot send a TPA request to yourself!","color":"red"}]

tag @s add sender

scoreboard players set <request_already_sent> variable 0
scoreboard players operation <sender_id> variable = @s id
execute as @a if score @s tpa_request.sender_id = <sender_id> variable store success score <request_already_sent> variable run tellraw @a[tag=sender,limit=1] [{"text":"[TPA]","color":"dark_red"},[{"text":" You have already sent a TPA request to ","color":"red"},{"selector":"@s","color":"red"},"! ",{"text":"[❌]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger tpa set -3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"gray"},{"text":"Cancel","bold":true}," outgoing TPA Request"]}}]]

execute if score <request_already_sent> variable matches 0 run function pandamium:impl/tpa/send_request/find_receiver

tag @s remove sender

return 0
